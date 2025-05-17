import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enum/status.dart';
import '../../../../../core/model/not_empty.dart';
import '../../../domain/entities/add_user.dart';
import '../../../domain/usecases/access_users_uses_cases.dart';
import '../../../domain/usecases/add_access_users_uses_cases.dart';

part 'acces_users_bloc.freezed.dart';
part 'acces_users_event.dart';
part 'acces_users_state.dart';

class AccessUserBloc extends Bloc<AccessUserEvent, AccessUserState> {
  final AccessUsersUsesCases accessUsers;
  final AddAccessUsersUsesCases addAccessUsers;
  AccessUserBloc({
    required this.accessUsers,
    required this.addAccessUsers,
  }) : super(const AccessUserState()) {
    on<_Init>(__init);
    on<_Name>(__name);
    on<_Number>(__number);
    on<_Pattern>(__pattern);
    on<_BubbleWrap>(__bubbleWrap);
    on<_EditReset>(__editReset);
    on<_InitState>(__initState);
    on<_Add>(__add);
  }

  void __add(_Add event, emit) async {
    emit(state.copyWith(addStatus: Status.loading));
    final add = AddAccessUser(
      name: state.name.value,
      number: state.number.value,
      pattern: state.pattern.value,
      enable: state.bubbleWrap ?? true,
    );
    final response = await addAccessUsers(add);
    response.fold((error) {
      emit(state.copyWith(addStatus: Status.failure));
    }, (success) {
      emit(
        state.copyWith(
          addStatus: Status.success,
          name: const NotEmpty.pure(),
          number: const NotEmpty.pure(),
          pattern: const NotEmpty.pure(),
          validation: false,
        ),
      );
    });
    emit(state.copyWith(addStatus: Status.init));
  }

  void __initState(_InitState event, emit) {
    emit(const AccessUserState());
  }

  void __init(_Init event, emit) async {
    emit(state.copyWith(status: Status.loading));
    final response = await accessUsers();
    response.fold(
      (error) {
        emit(state.copyWith(status: Status.failure, accessUsers: []));
      },
      (success) {
        emit(state.copyWith(status: Status.failure, accessUsers: success));
      },
    );
  }

  void __name(_Name event, emit) {
    final value = NotEmpty.dirty(value: event.value);
    emit(
      state.copyWith(
        name: value,
        validation: Formz.validate([value, state.pattern, state.number]),
      ),
    );
  }

  void __number(_Number event, emit) {
    final value = NotEmpty.dirty(value: event.value);
    emit(
      state.copyWith(
        number: value,
        validation: Formz.validate([value, state.pattern, state.name]),
      ),
    );
  }

  void __pattern(_Pattern event, emit) {
    final value = NotEmpty.dirty(value: event.value);
    emit(
      state.copyWith(
        pattern: value,
        validation: Formz.validate([value, state.number, state.name]),
      ),
    );
  }

  void __bubbleWrap(_BubbleWrap event, emit) {
    emit(state.copyWith(bubbleWrap: event.value));
  }

  void __editReset(_EditReset event, emit) {
    const notEmpty = NotEmpty.pure();
    emit(
      state.copyWith(
        addStatus: Status.init,
        name: notEmpty,
        pattern: notEmpty,
        number: notEmpty,
        validation: false,
      ),
    );
  }
}

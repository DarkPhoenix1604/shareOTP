part of 'acces_users_bloc.dart';

@freezed
class AccessUserState with _$AccessUserState {
  const factory AccessUserState({
    @Default(Status.init) final Status status,
    @Default(Status.init) final Status addStatus,
    @Default(-1) final int addIndex,
    @Default(NotEmpty.pure()) final NotEmpty name,
    @Default(NotEmpty.pure()) final NotEmpty number,
    @Default(NotEmpty.pure()) final NotEmpty pattern,
        @Default(null) final bool? bubbleWrap,
    @Default(false) final bool validation,
    @Default([]) final List<AddAccessUser> accessUsers,
  }) = _AccessUserState;
}

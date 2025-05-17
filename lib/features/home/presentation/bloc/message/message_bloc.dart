import 'package:another_telephony/telephony.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_otp/core/enum/status.dart';
import 'package:share_otp/service/message_service.dart';
// import 'package:sms_advanced/sms_advanced.dart' as sms;
// import 'package:telephony/telephony.dart';

import '../../../../../core/model/app_sms_model.dart';

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final MessageService messageService;
  MessageBloc({required this.messageService}) : super(MessageState()) {
    on<_Init>(__init);
    on<_InitState>(__initState);
    on<_Send>(__send);
  }

  void __send(_Send event, emit) async {
    emit(state.copyWith(sendStatus: Status.loading, sendIndex: event.index));
    await messageService.send(event.model);
    emit(state.copyWith(sendStatus: Status.success, sendIndex: event.index));
  }

  void __initState(_InitState event, emit) {}

  void __init(_Init event, emit) async {
    emit(state.copyWith(status: Status.loading));
    final message = await messageService.messages();
    emit(state.copyWith(status: Status.success, messages: message));
  }
}

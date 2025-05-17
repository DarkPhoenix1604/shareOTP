part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
 const factory MessageState({
    @Default(Status.init) final Status status,
    @Default(Status.init) final Status sendStatus,
    @Default(-1) final int sendIndex,
    @Default([]) final List<SmsMessage> messages,
  }) = _MessagesState;
}

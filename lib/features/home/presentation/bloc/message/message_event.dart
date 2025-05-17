part of 'message_bloc.dart';

@freezed
abstract class MessageEvent with _$MessageEvent {
  const factory MessageEvent.init() = _Init;
  const factory MessageEvent.initState() = _InitState;
  const factory MessageEvent.send(AppSMSModel model, int index) = _Send;
//  String address = "+919967446285";
  ///
}

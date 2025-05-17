part of 'acces_users_bloc.dart';

@freezed
abstract class AccessUserEvent with _$AccessUserEvent {
  const factory AccessUserEvent.init() = _Init;
  const factory AccessUserEvent.initState() = _InitState;
  const factory AccessUserEvent.name(String value) = _Name;
  const factory AccessUserEvent.number(String value) = _Number;
  const factory AccessUserEvent.pattern(String value) = _Pattern;
    const factory AccessUserEvent.bubbleWrap(bool value) = _BubbleWrap;
    const factory AccessUserEvent.editReset() = _EditReset;
  // const factory AccessUserEvent.add(AddAccessUser addAccessUser, int index) = _Add;
  const factory AccessUserEvent.add() = _Add;
}

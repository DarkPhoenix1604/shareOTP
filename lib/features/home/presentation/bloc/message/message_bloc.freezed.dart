// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() initState,
    required TResult Function(AppSMSModel model, int index) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? initState,
    TResult? Function(AppSMSModel model, int index)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? initState,
    TResult Function(AppSMSModel model, int index)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InitState value) initState,
    required TResult Function(_Send value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InitState value)? initState,
    TResult? Function(_Send value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InitState value)? initState,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res, MessageEvent>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res, $Val extends MessageEvent>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'MessageEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() initState,
    required TResult Function(AppSMSModel model, int index) send,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? initState,
    TResult? Function(AppSMSModel model, int index)? send,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? initState,
    TResult Function(AppSMSModel model, int index)? send,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InitState value) initState,
    required TResult Function(_Send value) send,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InitState value)? initState,
    TResult? Function(_Send value)? send,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InitState value)? initState,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements MessageEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$InitStateImplCopyWith<$Res> {
  factory _$$InitStateImplCopyWith(
          _$InitStateImpl value, $Res Function(_$InitStateImpl) then) =
      __$$InitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitStateImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$InitStateImpl>
    implements _$$InitStateImplCopyWith<$Res> {
  __$$InitStateImplCopyWithImpl(
      _$InitStateImpl _value, $Res Function(_$InitStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitStateImpl implements _InitState {
  const _$InitStateImpl();

  @override
  String toString() {
    return 'MessageEvent.initState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() initState,
    required TResult Function(AppSMSModel model, int index) send,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? initState,
    TResult? Function(AppSMSModel model, int index)? send,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? initState,
    TResult Function(AppSMSModel model, int index)? send,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InitState value) initState,
    required TResult Function(_Send value) send,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InitState value)? initState,
    TResult? Function(_Send value)? send,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InitState value)? initState,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class _InitState implements MessageEvent {
  const factory _InitState() = _$InitStateImpl;
}

/// @nodoc
abstract class _$$SendImplCopyWith<$Res> {
  factory _$$SendImplCopyWith(
          _$SendImpl value, $Res Function(_$SendImpl) then) =
      __$$SendImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppSMSModel model, int index});
}

/// @nodoc
class __$$SendImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$SendImpl>
    implements _$$SendImplCopyWith<$Res> {
  __$$SendImplCopyWithImpl(_$SendImpl _value, $Res Function(_$SendImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? index = null,
  }) {
    return _then(_$SendImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AppSMSModel,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendImpl implements _Send {
  const _$SendImpl(this.model, this.index);

  @override
  final AppSMSModel model;
  @override
  final int index;

  @override
  String toString() {
    return 'MessageEvent.send(model: $model, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      __$$SendImplCopyWithImpl<_$SendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() initState,
    required TResult Function(AppSMSModel model, int index) send,
  }) {
    return send(model, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? initState,
    TResult? Function(AppSMSModel model, int index)? send,
  }) {
    return send?.call(model, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? initState,
    TResult Function(AppSMSModel model, int index)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(model, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_InitState value) initState,
    required TResult Function(_Send value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_InitState value)? initState,
    TResult? Function(_Send value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_InitState value)? initState,
    TResult Function(_Send value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _Send implements MessageEvent {
  const factory _Send(final AppSMSModel model, final int index) = _$SendImpl;

  AppSMSModel get model;
  int get index;
  @JsonKey(ignore: true)
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageState {
  Status get status => throw _privateConstructorUsedError;
  Status get sendStatus => throw _privateConstructorUsedError;
  int get sendIndex => throw _privateConstructorUsedError;
  List<SmsMessage> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
  @useResult
  $Res call(
      {Status status,
      Status sendStatus,
      int sendIndex,
      List<SmsMessage> messages});
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sendStatus = null,
    Object? sendIndex = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      sendStatus: null == sendStatus
          ? _value.sendStatus
          : sendStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      sendIndex: null == sendIndex
          ? _value.sendIndex
          : sendIndex // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SmsMessage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagesStateImplCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$MessagesStateImplCopyWith(
          _$MessagesStateImpl value, $Res Function(_$MessagesStateImpl) then) =
      __$$MessagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Status sendStatus,
      int sendIndex,
      List<SmsMessage> messages});
}

/// @nodoc
class __$$MessagesStateImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessagesStateImpl>
    implements _$$MessagesStateImplCopyWith<$Res> {
  __$$MessagesStateImplCopyWithImpl(
      _$MessagesStateImpl _value, $Res Function(_$MessagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sendStatus = null,
    Object? sendIndex = null,
    Object? messages = null,
  }) {
    return _then(_$MessagesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      sendStatus: null == sendStatus
          ? _value.sendStatus
          : sendStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      sendIndex: null == sendIndex
          ? _value.sendIndex
          : sendIndex // ignore: cast_nullable_to_non_nullable
              as int,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<SmsMessage>,
    ));
  }
}

/// @nodoc

class _$MessagesStateImpl implements _MessagesState {
  const _$MessagesStateImpl(
      {this.status = Status.init,
      this.sendStatus = Status.init,
      this.sendIndex = -1,
      final List<SmsMessage> messages = const []})
      : _messages = messages;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status sendStatus;
  @override
  @JsonKey()
  final int sendIndex;
  final List<SmsMessage> _messages;
  @override
  @JsonKey()
  List<SmsMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageState(status: $status, sendStatus: $sendStatus, sendIndex: $sendIndex, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sendStatus, sendStatus) ||
                other.sendStatus == sendStatus) &&
            (identical(other.sendIndex, sendIndex) ||
                other.sendIndex == sendIndex) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, sendStatus, sendIndex,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesStateImplCopyWith<_$MessagesStateImpl> get copyWith =>
      __$$MessagesStateImplCopyWithImpl<_$MessagesStateImpl>(this, _$identity);
}

abstract class _MessagesState implements MessageState {
  const factory _MessagesState(
      {final Status status,
      final Status sendStatus,
      final int sendIndex,
      final List<SmsMessage> messages}) = _$MessagesStateImpl;

  @override
  Status get status;
  @override
  Status get sendStatus;
  @override
  int get sendIndex;
  @override
  List<SmsMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$$MessagesStateImplCopyWith<_$MessagesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

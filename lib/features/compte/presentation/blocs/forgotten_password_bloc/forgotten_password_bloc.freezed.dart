// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forgotten_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ForgottenPasswordEventTearOff {
  const _$ForgottenPasswordEventTearOff();

// ignore: unused_element
  _PressSendButton pressSendButton(String email) {
    return _PressSendButton(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ForgottenPasswordEvent = _$ForgottenPasswordEventTearOff();

/// @nodoc
mixin _$ForgottenPasswordEvent {
  String get email;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pressSendButton(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pressSendButton(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pressSendButton(_PressSendButton value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pressSendButton(_PressSendButton value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ForgottenPasswordEventCopyWith<ForgottenPasswordEvent> get copyWith;
}

/// @nodoc
abstract class $ForgottenPasswordEventCopyWith<$Res> {
  factory $ForgottenPasswordEventCopyWith(ForgottenPasswordEvent value,
          $Res Function(ForgottenPasswordEvent) then) =
      _$ForgottenPasswordEventCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ForgottenPasswordEventCopyWithImpl<$Res>
    implements $ForgottenPasswordEventCopyWith<$Res> {
  _$ForgottenPasswordEventCopyWithImpl(this._value, this._then);

  final ForgottenPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgottenPasswordEvent) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$PressSendButtonCopyWith<$Res>
    implements $ForgottenPasswordEventCopyWith<$Res> {
  factory _$PressSendButtonCopyWith(
          _PressSendButton value, $Res Function(_PressSendButton) then) =
      __$PressSendButtonCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$PressSendButtonCopyWithImpl<$Res>
    extends _$ForgottenPasswordEventCopyWithImpl<$Res>
    implements _$PressSendButtonCopyWith<$Res> {
  __$PressSendButtonCopyWithImpl(
      _PressSendButton _value, $Res Function(_PressSendButton) _then)
      : super(_value, (v) => _then(v as _PressSendButton));

  @override
  _PressSendButton get _value => super._value as _PressSendButton;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_PressSendButton(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_PressSendButton implements _PressSendButton {
  const _$_PressSendButton(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgottenPasswordEvent.pressSendButton(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PressSendButton &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$PressSendButtonCopyWith<_PressSendButton> get copyWith =>
      __$PressSendButtonCopyWithImpl<_PressSendButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult pressSendButton(String email),
  }) {
    assert(pressSendButton != null);
    return pressSendButton(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult pressSendButton(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pressSendButton != null) {
      return pressSendButton(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult pressSendButton(_PressSendButton value),
  }) {
    assert(pressSendButton != null);
    return pressSendButton(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult pressSendButton(_PressSendButton value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (pressSendButton != null) {
      return pressSendButton(this);
    }
    return orElse();
  }
}

abstract class _PressSendButton implements ForgottenPasswordEvent {
  const factory _PressSendButton(String email) = _$_PressSendButton;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$PressSendButtonCopyWith<_PressSendButton> get copyWith;
}

/// @nodoc
class _$ForgottenPasswordStateTearOff {
  const _$ForgottenPasswordStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success() {
    return const _Success();
  }

// ignore: unused_element
  _Failed failed() {
    return const _Failed();
  }
}

/// @nodoc
// ignore: unused_element
const $ForgottenPasswordState = _$ForgottenPasswordStateTearOff();

/// @nodoc
mixin _$ForgottenPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult failed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult failed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ForgottenPasswordStateCopyWith<$Res> {
  factory $ForgottenPasswordStateCopyWith(ForgottenPasswordState value,
          $Res Function(ForgottenPasswordState) then) =
      _$ForgottenPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgottenPasswordStateCopyWithImpl<$Res>
    implements $ForgottenPasswordStateCopyWith<$Res> {
  _$ForgottenPasswordStateCopyWithImpl(this._value, this._then);

  final ForgottenPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgottenPasswordState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ForgottenPasswordStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ForgottenPasswordState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult failed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult failed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgottenPasswordState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ForgottenPasswordStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ForgottenPasswordState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult failed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult failed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ForgottenPasswordState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$ForgottenPasswordStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'ForgottenPasswordState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult failed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult failed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ForgottenPasswordState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$ForgottenPasswordStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;
}

/// @nodoc
class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'ForgottenPasswordState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult failed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult failed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failed(_Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failed(_Failed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ForgottenPasswordState {
  const factory _Failed() = _$_Failed;
}

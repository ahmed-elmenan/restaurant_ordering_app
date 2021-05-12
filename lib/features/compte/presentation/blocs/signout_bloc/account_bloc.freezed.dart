// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountEventTearOff {
  const _$AccountEventTearOff();

// ignore: unused_element
  _LogOutButtonPressedEvent logOutButtonPressedEvent() {
    return const _LogOutButtonPressedEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $AccountEvent = _$AccountEventTearOff();

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutButtonPressedEvent(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutButtonPressedEvent(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutButtonPressedEvent(_LogOutButtonPressedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutButtonPressedEvent(_LogOutButtonPressedEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res> implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  final AccountEvent _value;
  // ignore: unused_field
  final $Res Function(AccountEvent) _then;
}

/// @nodoc
abstract class _$LogOutButtonPressedEventCopyWith<$Res> {
  factory _$LogOutButtonPressedEventCopyWith(_LogOutButtonPressedEvent value,
          $Res Function(_LogOutButtonPressedEvent) then) =
      __$LogOutButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutButtonPressedEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res>
    implements _$LogOutButtonPressedEventCopyWith<$Res> {
  __$LogOutButtonPressedEventCopyWithImpl(_LogOutButtonPressedEvent _value,
      $Res Function(_LogOutButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as _LogOutButtonPressedEvent));

  @override
  _LogOutButtonPressedEvent get _value =>
      super._value as _LogOutButtonPressedEvent;
}

/// @nodoc
class _$_LogOutButtonPressedEvent implements _LogOutButtonPressedEvent {
  const _$_LogOutButtonPressedEvent();

  @override
  String toString() {
    return 'AccountEvent.logOutButtonPressedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOutButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutButtonPressedEvent(),
  }) {
    assert(logOutButtonPressedEvent != null);
    return logOutButtonPressedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutButtonPressedEvent(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutButtonPressedEvent != null) {
      return logOutButtonPressedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutButtonPressedEvent(_LogOutButtonPressedEvent value),
  }) {
    assert(logOutButtonPressedEvent != null);
    return logOutButtonPressedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutButtonPressedEvent(_LogOutButtonPressedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutButtonPressedEvent != null) {
      return logOutButtonPressedEvent(this);
    }
    return orElse();
  }
}

abstract class _LogOutButtonPressedEvent implements AccountEvent {
  const factory _LogOutButtonPressedEvent() = _$_LogOutButtonPressedEvent;
}

/// @nodoc
class _$AccountStateTearOff {
  const _$AccountStateTearOff();

// ignore: unused_element
  _LogOutSuccess logOutSuccess() {
    return const _LogOutSuccess();
  }

// ignore: unused_element
  _LogOutLoading logOutLoading() {
    return const _LogOutLoading();
  }

// ignore: unused_element
  _LogOutInitial logOutInitial() {
    return const _LogOutInitial();
  }
}

/// @nodoc
// ignore: unused_element
const $AccountState = _$AccountStateTearOff();

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutSuccess(),
    @required TResult logOutLoading(),
    @required TResult logOutInitial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutSuccess(),
    TResult logOutLoading(),
    TResult logOutInitial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutSuccess(_LogOutSuccess value),
    @required TResult logOutLoading(_LogOutLoading value),
    @required TResult logOutInitial(_LogOutInitial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutSuccess(_LogOutSuccess value),
    TResult logOutLoading(_LogOutLoading value),
    TResult logOutInitial(_LogOutInitial value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res> implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  final AccountState _value;
  // ignore: unused_field
  final $Res Function(AccountState) _then;
}

/// @nodoc
abstract class _$LogOutSuccessCopyWith<$Res> {
  factory _$LogOutSuccessCopyWith(
          _LogOutSuccess value, $Res Function(_LogOutSuccess) then) =
      __$LogOutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutSuccessCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements _$LogOutSuccessCopyWith<$Res> {
  __$LogOutSuccessCopyWithImpl(
      _LogOutSuccess _value, $Res Function(_LogOutSuccess) _then)
      : super(_value, (v) => _then(v as _LogOutSuccess));

  @override
  _LogOutSuccess get _value => super._value as _LogOutSuccess;
}

/// @nodoc
class _$_LogOutSuccess implements _LogOutSuccess {
  const _$_LogOutSuccess();

  @override
  String toString() {
    return 'AccountState.logOutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutSuccess(),
    @required TResult logOutLoading(),
    @required TResult logOutInitial(),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutSuccess(),
    TResult logOutLoading(),
    TResult logOutInitial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutSuccess != null) {
      return logOutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutSuccess(_LogOutSuccess value),
    @required TResult logOutLoading(_LogOutLoading value),
    @required TResult logOutInitial(_LogOutInitial value),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutSuccess(_LogOutSuccess value),
    TResult logOutLoading(_LogOutLoading value),
    TResult logOutInitial(_LogOutInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutSuccess != null) {
      return logOutSuccess(this);
    }
    return orElse();
  }
}

abstract class _LogOutSuccess implements AccountState {
  const factory _LogOutSuccess() = _$_LogOutSuccess;
}

/// @nodoc
abstract class _$LogOutLoadingCopyWith<$Res> {
  factory _$LogOutLoadingCopyWith(
          _LogOutLoading value, $Res Function(_LogOutLoading) then) =
      __$LogOutLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements _$LogOutLoadingCopyWith<$Res> {
  __$LogOutLoadingCopyWithImpl(
      _LogOutLoading _value, $Res Function(_LogOutLoading) _then)
      : super(_value, (v) => _then(v as _LogOutLoading));

  @override
  _LogOutLoading get _value => super._value as _LogOutLoading;
}

/// @nodoc
class _$_LogOutLoading implements _LogOutLoading {
  const _$_LogOutLoading();

  @override
  String toString() {
    return 'AccountState.logOutLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutSuccess(),
    @required TResult logOutLoading(),
    @required TResult logOutInitial(),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutSuccess(),
    TResult logOutLoading(),
    TResult logOutInitial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutLoading != null) {
      return logOutLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutSuccess(_LogOutSuccess value),
    @required TResult logOutLoading(_LogOutLoading value),
    @required TResult logOutInitial(_LogOutInitial value),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutSuccess(_LogOutSuccess value),
    TResult logOutLoading(_LogOutLoading value),
    TResult logOutInitial(_LogOutInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutLoading != null) {
      return logOutLoading(this);
    }
    return orElse();
  }
}

abstract class _LogOutLoading implements AccountState {
  const factory _LogOutLoading() = _$_LogOutLoading;
}

/// @nodoc
abstract class _$LogOutInitialCopyWith<$Res> {
  factory _$LogOutInitialCopyWith(
          _LogOutInitial value, $Res Function(_LogOutInitial) then) =
      __$LogOutInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutInitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res>
    implements _$LogOutInitialCopyWith<$Res> {
  __$LogOutInitialCopyWithImpl(
      _LogOutInitial _value, $Res Function(_LogOutInitial) _then)
      : super(_value, (v) => _then(v as _LogOutInitial));

  @override
  _LogOutInitial get _value => super._value as _LogOutInitial;
}

/// @nodoc
class _$_LogOutInitial implements _LogOutInitial {
  const _$_LogOutInitial();

  @override
  String toString() {
    return 'AccountState.logOutInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOutInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logOutSuccess(),
    @required TResult logOutLoading(),
    @required TResult logOutInitial(),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutInitial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logOutSuccess(),
    TResult logOutLoading(),
    TResult logOutInitial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutInitial != null) {
      return logOutInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logOutSuccess(_LogOutSuccess value),
    @required TResult logOutLoading(_LogOutLoading value),
    @required TResult logOutInitial(_LogOutInitial value),
  }) {
    assert(logOutSuccess != null);
    assert(logOutLoading != null);
    assert(logOutInitial != null);
    return logOutInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logOutSuccess(_LogOutSuccess value),
    TResult logOutLoading(_LogOutLoading value),
    TResult logOutInitial(_LogOutInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logOutInitial != null) {
      return logOutInitial(this);
    }
    return orElse();
  }
}

abstract class _LogOutInitial implements AccountState {
  const factory _LogOutInitial() = _$_LogOutInitial;
}

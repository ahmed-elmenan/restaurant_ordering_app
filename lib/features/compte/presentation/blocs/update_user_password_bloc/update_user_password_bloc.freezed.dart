// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_user_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateUserPasswordEventTearOff {
  const _$UpdateUserPasswordEventTearOff();

// ignore: unused_element
  _UpdatePasswordButtonPressed updatePasswordButtonPressed(
      User user, String newPassword) {
    return _UpdatePasswordButtonPressed(
      user,
      newPassword,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUserPasswordEvent = _$UpdateUserPasswordEventTearOff();

/// @nodoc
mixin _$UpdateUserPasswordEvent {
  User get user;
  String get newPassword;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult updatePasswordButtonPressed(User user, String newPassword),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updatePasswordButtonPressed(User user, String newPassword),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult updatePasswordButtonPressed(_UpdatePasswordButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updatePasswordButtonPressed(_UpdatePasswordButtonPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $UpdateUserPasswordEventCopyWith<UpdateUserPasswordEvent> get copyWith;
}

/// @nodoc
abstract class $UpdateUserPasswordEventCopyWith<$Res> {
  factory $UpdateUserPasswordEventCopyWith(UpdateUserPasswordEvent value,
          $Res Function(UpdateUserPasswordEvent) then) =
      _$UpdateUserPasswordEventCopyWithImpl<$Res>;
  $Res call({User user, String newPassword});
}

/// @nodoc
class _$UpdateUserPasswordEventCopyWithImpl<$Res>
    implements $UpdateUserPasswordEventCopyWith<$Res> {
  _$UpdateUserPasswordEventCopyWithImpl(this._value, this._then);

  final UpdateUserPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateUserPasswordEvent) _then;

  @override
  $Res call({
    Object user = freezed,
    Object newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      newPassword:
          newPassword == freezed ? _value.newPassword : newPassword as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdatePasswordButtonPressedCopyWith<$Res>
    implements $UpdateUserPasswordEventCopyWith<$Res> {
  factory _$UpdatePasswordButtonPressedCopyWith(
          _UpdatePasswordButtonPressed value,
          $Res Function(_UpdatePasswordButtonPressed) then) =
      __$UpdatePasswordButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({User user, String newPassword});
}

/// @nodoc
class __$UpdatePasswordButtonPressedCopyWithImpl<$Res>
    extends _$UpdateUserPasswordEventCopyWithImpl<$Res>
    implements _$UpdatePasswordButtonPressedCopyWith<$Res> {
  __$UpdatePasswordButtonPressedCopyWithImpl(
      _UpdatePasswordButtonPressed _value,
      $Res Function(_UpdatePasswordButtonPressed) _then)
      : super(_value, (v) => _then(v as _UpdatePasswordButtonPressed));

  @override
  _UpdatePasswordButtonPressed get _value =>
      super._value as _UpdatePasswordButtonPressed;

  @override
  $Res call({
    Object user = freezed,
    Object newPassword = freezed,
  }) {
    return _then(_UpdatePasswordButtonPressed(
      user == freezed ? _value.user : user as User,
      newPassword == freezed ? _value.newPassword : newPassword as String,
    ));
  }
}

/// @nodoc
class _$_UpdatePasswordButtonPressed implements _UpdatePasswordButtonPressed {
  const _$_UpdatePasswordButtonPressed(this.user, this.newPassword)
      : assert(user != null),
        assert(newPassword != null);

  @override
  final User user;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'UpdateUserPasswordEvent.updatePasswordButtonPressed(user: $user, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePasswordButtonPressed &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(newPassword);

  @JsonKey(ignore: true)
  @override
  _$UpdatePasswordButtonPressedCopyWith<_UpdatePasswordButtonPressed>
      get copyWith => __$UpdatePasswordButtonPressedCopyWithImpl<
          _UpdatePasswordButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult updatePasswordButtonPressed(User user, String newPassword),
  }) {
    assert(updatePasswordButtonPressed != null);
    return updatePasswordButtonPressed(user, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updatePasswordButtonPressed(User user, String newPassword),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordButtonPressed != null) {
      return updatePasswordButtonPressed(user, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult updatePasswordButtonPressed(_UpdatePasswordButtonPressed value),
  }) {
    assert(updatePasswordButtonPressed != null);
    return updatePasswordButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updatePasswordButtonPressed(_UpdatePasswordButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordButtonPressed != null) {
      return updatePasswordButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordButtonPressed implements UpdateUserPasswordEvent {
  const factory _UpdatePasswordButtonPressed(User user, String newPassword) =
      _$_UpdatePasswordButtonPressed;

  @override
  User get user;
  @override
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$UpdatePasswordButtonPressedCopyWith<_UpdatePasswordButtonPressed>
      get copyWith;
}

/// @nodoc
class _$UpdateUserPasswordStateTearOff {
  const _$UpdateUserPasswordStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UpdatePasswordLoading updatePasswordLoading() {
    return const _UpdatePasswordLoading();
  }

// ignore: unused_element
  _UpdatePasswordSuccess updatePasswordSuccess() {
    return const _UpdatePasswordSuccess();
  }

// ignore: unused_element
  _UpdatePasswordFailed updatePasswordFailed() {
    return const _UpdatePasswordFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUserPasswordState = _$UpdateUserPasswordStateTearOff();

/// @nodoc
mixin _$UpdateUserPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updatePasswordLoading(),
    @required TResult updatePasswordSuccess(),
    @required TResult updatePasswordFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updatePasswordLoading(),
    TResult updatePasswordSuccess(),
    TResult updatePasswordFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updatePasswordLoading(_UpdatePasswordLoading value),
    @required TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    @required TResult updatePasswordFailed(_UpdatePasswordFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updatePasswordLoading(_UpdatePasswordLoading value),
    TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    TResult updatePasswordFailed(_UpdatePasswordFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UpdateUserPasswordStateCopyWith<$Res> {
  factory $UpdateUserPasswordStateCopyWith(UpdateUserPasswordState value,
          $Res Function(UpdateUserPasswordState) then) =
      _$UpdateUserPasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserPasswordStateCopyWithImpl<$Res>
    implements $UpdateUserPasswordStateCopyWith<$Res> {
  _$UpdateUserPasswordStateCopyWithImpl(this._value, this._then);

  final UpdateUserPasswordState _value;
  // ignore: unused_field
  final $Res Function(UpdateUserPasswordState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UpdateUserPasswordStateCopyWithImpl<$Res>
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
    return 'UpdateUserPasswordState.initial()';
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
    @required TResult updatePasswordLoading(),
    @required TResult updatePasswordSuccess(),
    @required TResult updatePasswordFailed(),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updatePasswordLoading(),
    TResult updatePasswordSuccess(),
    TResult updatePasswordFailed(),
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
    @required TResult updatePasswordLoading(_UpdatePasswordLoading value),
    @required TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    @required TResult updatePasswordFailed(_UpdatePasswordFailed value),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updatePasswordLoading(_UpdatePasswordLoading value),
    TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    TResult updatePasswordFailed(_UpdatePasswordFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateUserPasswordState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdatePasswordLoadingCopyWith<$Res> {
  factory _$UpdatePasswordLoadingCopyWith(_UpdatePasswordLoading value,
          $Res Function(_UpdatePasswordLoading) then) =
      __$UpdatePasswordLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatePasswordLoadingCopyWithImpl<$Res>
    extends _$UpdateUserPasswordStateCopyWithImpl<$Res>
    implements _$UpdatePasswordLoadingCopyWith<$Res> {
  __$UpdatePasswordLoadingCopyWithImpl(_UpdatePasswordLoading _value,
      $Res Function(_UpdatePasswordLoading) _then)
      : super(_value, (v) => _then(v as _UpdatePasswordLoading));

  @override
  _UpdatePasswordLoading get _value => super._value as _UpdatePasswordLoading;
}

/// @nodoc
class _$_UpdatePasswordLoading implements _UpdatePasswordLoading {
  const _$_UpdatePasswordLoading();

  @override
  String toString() {
    return 'UpdateUserPasswordState.updatePasswordLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatePasswordLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updatePasswordLoading(),
    @required TResult updatePasswordSuccess(),
    @required TResult updatePasswordFailed(),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updatePasswordLoading(),
    TResult updatePasswordSuccess(),
    TResult updatePasswordFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordLoading != null) {
      return updatePasswordLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updatePasswordLoading(_UpdatePasswordLoading value),
    @required TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    @required TResult updatePasswordFailed(_UpdatePasswordFailed value),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updatePasswordLoading(_UpdatePasswordLoading value),
    TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    TResult updatePasswordFailed(_UpdatePasswordFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordLoading != null) {
      return updatePasswordLoading(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordLoading implements UpdateUserPasswordState {
  const factory _UpdatePasswordLoading() = _$_UpdatePasswordLoading;
}

/// @nodoc
abstract class _$UpdatePasswordSuccessCopyWith<$Res> {
  factory _$UpdatePasswordSuccessCopyWith(_UpdatePasswordSuccess value,
          $Res Function(_UpdatePasswordSuccess) then) =
      __$UpdatePasswordSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatePasswordSuccessCopyWithImpl<$Res>
    extends _$UpdateUserPasswordStateCopyWithImpl<$Res>
    implements _$UpdatePasswordSuccessCopyWith<$Res> {
  __$UpdatePasswordSuccessCopyWithImpl(_UpdatePasswordSuccess _value,
      $Res Function(_UpdatePasswordSuccess) _then)
      : super(_value, (v) => _then(v as _UpdatePasswordSuccess));

  @override
  _UpdatePasswordSuccess get _value => super._value as _UpdatePasswordSuccess;
}

/// @nodoc
class _$_UpdatePasswordSuccess implements _UpdatePasswordSuccess {
  const _$_UpdatePasswordSuccess();

  @override
  String toString() {
    return 'UpdateUserPasswordState.updatePasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatePasswordSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updatePasswordLoading(),
    @required TResult updatePasswordSuccess(),
    @required TResult updatePasswordFailed(),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updatePasswordLoading(),
    TResult updatePasswordSuccess(),
    TResult updatePasswordFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updatePasswordLoading(_UpdatePasswordLoading value),
    @required TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    @required TResult updatePasswordFailed(_UpdatePasswordFailed value),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updatePasswordLoading(_UpdatePasswordLoading value),
    TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    TResult updatePasswordFailed(_UpdatePasswordFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordSuccess implements UpdateUserPasswordState {
  const factory _UpdatePasswordSuccess() = _$_UpdatePasswordSuccess;
}

/// @nodoc
abstract class _$UpdatePasswordFailedCopyWith<$Res> {
  factory _$UpdatePasswordFailedCopyWith(_UpdatePasswordFailed value,
          $Res Function(_UpdatePasswordFailed) then) =
      __$UpdatePasswordFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatePasswordFailedCopyWithImpl<$Res>
    extends _$UpdateUserPasswordStateCopyWithImpl<$Res>
    implements _$UpdatePasswordFailedCopyWith<$Res> {
  __$UpdatePasswordFailedCopyWithImpl(
      _UpdatePasswordFailed _value, $Res Function(_UpdatePasswordFailed) _then)
      : super(_value, (v) => _then(v as _UpdatePasswordFailed));

  @override
  _UpdatePasswordFailed get _value => super._value as _UpdatePasswordFailed;
}

/// @nodoc
class _$_UpdatePasswordFailed implements _UpdatePasswordFailed {
  const _$_UpdatePasswordFailed();

  @override
  String toString() {
    return 'UpdateUserPasswordState.updatePasswordFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatePasswordFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updatePasswordLoading(),
    @required TResult updatePasswordSuccess(),
    @required TResult updatePasswordFailed(),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updatePasswordLoading(),
    TResult updatePasswordSuccess(),
    TResult updatePasswordFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordFailed != null) {
      return updatePasswordFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updatePasswordLoading(_UpdatePasswordLoading value),
    @required TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    @required TResult updatePasswordFailed(_UpdatePasswordFailed value),
  }) {
    assert(initial != null);
    assert(updatePasswordLoading != null);
    assert(updatePasswordSuccess != null);
    assert(updatePasswordFailed != null);
    return updatePasswordFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updatePasswordLoading(_UpdatePasswordLoading value),
    TResult updatePasswordSuccess(_UpdatePasswordSuccess value),
    TResult updatePasswordFailed(_UpdatePasswordFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordFailed != null) {
      return updatePasswordFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdatePasswordFailed implements UpdateUserPasswordState {
  const factory _UpdatePasswordFailed() = _$_UpdatePasswordFailed;
}

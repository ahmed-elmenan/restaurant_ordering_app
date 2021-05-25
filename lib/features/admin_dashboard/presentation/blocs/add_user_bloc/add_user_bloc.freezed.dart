// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddUserEventTearOff {
  const _$AddUserEventTearOff();

// ignore: unused_element
  _AddUserButtonPressed addUserButtonPressed(UserModel userModel) {
    return _AddUserButtonPressed(
      userModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserEvent = _$AddUserEventTearOff();

/// @nodoc
mixin _$AddUserEvent {
  UserModel get userModel;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addUserButtonPressed(UserModel userModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addUserButtonPressed(UserModel userModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addUserButtonPressed(_AddUserButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addUserButtonPressed(_AddUserButtonPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AddUserEventCopyWith<AddUserEvent> get copyWith;
}

/// @nodoc
abstract class $AddUserEventCopyWith<$Res> {
  factory $AddUserEventCopyWith(
          AddUserEvent value, $Res Function(AddUserEvent) then) =
      _$AddUserEventCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

/// @nodoc
class _$AddUserEventCopyWithImpl<$Res> implements $AddUserEventCopyWith<$Res> {
  _$AddUserEventCopyWithImpl(this._value, this._then);

  final AddUserEvent _value;
  // ignore: unused_field
  final $Res Function(AddUserEvent) _then;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

/// @nodoc
abstract class _$AddUserButtonPressedCopyWith<$Res>
    implements $AddUserEventCopyWith<$Res> {
  factory _$AddUserButtonPressedCopyWith(_AddUserButtonPressed value,
          $Res Function(_AddUserButtonPressed) then) =
      __$AddUserButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({UserModel userModel});
}

/// @nodoc
class __$AddUserButtonPressedCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res>
    implements _$AddUserButtonPressedCopyWith<$Res> {
  __$AddUserButtonPressedCopyWithImpl(
      _AddUserButtonPressed _value, $Res Function(_AddUserButtonPressed) _then)
      : super(_value, (v) => _then(v as _AddUserButtonPressed));

  @override
  _AddUserButtonPressed get _value => super._value as _AddUserButtonPressed;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(_AddUserButtonPressed(
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

/// @nodoc
class _$_AddUserButtonPressed implements _AddUserButtonPressed {
  const _$_AddUserButtonPressed(this.userModel) : assert(userModel != null);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AddUserEvent.addUserButtonPressed(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddUserButtonPressed &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModel);

  @JsonKey(ignore: true)
  @override
  _$AddUserButtonPressedCopyWith<_AddUserButtonPressed> get copyWith =>
      __$AddUserButtonPressedCopyWithImpl<_AddUserButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addUserButtonPressed(UserModel userModel),
  }) {
    assert(addUserButtonPressed != null);
    return addUserButtonPressed(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addUserButtonPressed(UserModel userModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserButtonPressed != null) {
      return addUserButtonPressed(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addUserButtonPressed(_AddUserButtonPressed value),
  }) {
    assert(addUserButtonPressed != null);
    return addUserButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addUserButtonPressed(_AddUserButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserButtonPressed != null) {
      return addUserButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddUserButtonPressed implements AddUserEvent {
  const factory _AddUserButtonPressed(UserModel userModel) =
      _$_AddUserButtonPressed;

  @override
  UserModel get userModel;
  @override
  @JsonKey(ignore: true)
  _$AddUserButtonPressedCopyWith<_AddUserButtonPressed> get copyWith;
}

/// @nodoc
class _$AddUserStateTearOff {
  const _$AddUserStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AddUserLoading addUserLoading() {
    return const _AddUserLoading();
  }

// ignore: unused_element
  _AddUserSuccess addUserSuccess() {
    return const _AddUserSuccess();
  }

// ignore: unused_element
  _AddUserFailed addUserFailed() {
    return const _AddUserFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $AddUserState = _$AddUserStateTearOff();

/// @nodoc
mixin _$AddUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addUserLoading(),
    @required TResult addUserSuccess(),
    @required TResult addUserFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addUserLoading(),
    TResult addUserSuccess(),
    TResult addUserFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addUserLoading(_AddUserLoading value),
    @required TResult addUserSuccess(_AddUserSuccess value),
    @required TResult addUserFailed(_AddUserFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addUserLoading(_AddUserLoading value),
    TResult addUserSuccess(_AddUserSuccess value),
    TResult addUserFailed(_AddUserFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddUserStateCopyWith<$Res> {
  factory $AddUserStateCopyWith(
          AddUserState value, $Res Function(AddUserState) then) =
      _$AddUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserStateCopyWithImpl<$Res> implements $AddUserStateCopyWith<$Res> {
  _$AddUserStateCopyWithImpl(this._value, this._then);

  final AddUserState _value;
  // ignore: unused_field
  final $Res Function(AddUserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddUserStateCopyWithImpl<$Res>
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
    return 'AddUserState.initial()';
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
    @required TResult addUserLoading(),
    @required TResult addUserSuccess(),
    @required TResult addUserFailed(),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addUserLoading(),
    TResult addUserSuccess(),
    TResult addUserFailed(),
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
    @required TResult addUserLoading(_AddUserLoading value),
    @required TResult addUserSuccess(_AddUserSuccess value),
    @required TResult addUserFailed(_AddUserFailed value),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addUserLoading(_AddUserLoading value),
    TResult addUserSuccess(_AddUserSuccess value),
    TResult addUserFailed(_AddUserFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddUserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddUserLoadingCopyWith<$Res> {
  factory _$AddUserLoadingCopyWith(
          _AddUserLoading value, $Res Function(_AddUserLoading) then) =
      __$AddUserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddUserLoadingCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res>
    implements _$AddUserLoadingCopyWith<$Res> {
  __$AddUserLoadingCopyWithImpl(
      _AddUserLoading _value, $Res Function(_AddUserLoading) _then)
      : super(_value, (v) => _then(v as _AddUserLoading));

  @override
  _AddUserLoading get _value => super._value as _AddUserLoading;
}

/// @nodoc
class _$_AddUserLoading implements _AddUserLoading {
  const _$_AddUserLoading();

  @override
  String toString() {
    return 'AddUserState.addUserLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddUserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addUserLoading(),
    @required TResult addUserSuccess(),
    @required TResult addUserFailed(),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addUserLoading(),
    TResult addUserSuccess(),
    TResult addUserFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserLoading != null) {
      return addUserLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addUserLoading(_AddUserLoading value),
    @required TResult addUserSuccess(_AddUserSuccess value),
    @required TResult addUserFailed(_AddUserFailed value),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addUserLoading(_AddUserLoading value),
    TResult addUserSuccess(_AddUserSuccess value),
    TResult addUserFailed(_AddUserFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserLoading != null) {
      return addUserLoading(this);
    }
    return orElse();
  }
}

abstract class _AddUserLoading implements AddUserState {
  const factory _AddUserLoading() = _$_AddUserLoading;
}

/// @nodoc
abstract class _$AddUserSuccessCopyWith<$Res> {
  factory _$AddUserSuccessCopyWith(
          _AddUserSuccess value, $Res Function(_AddUserSuccess) then) =
      __$AddUserSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddUserSuccessCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res>
    implements _$AddUserSuccessCopyWith<$Res> {
  __$AddUserSuccessCopyWithImpl(
      _AddUserSuccess _value, $Res Function(_AddUserSuccess) _then)
      : super(_value, (v) => _then(v as _AddUserSuccess));

  @override
  _AddUserSuccess get _value => super._value as _AddUserSuccess;
}

/// @nodoc
class _$_AddUserSuccess implements _AddUserSuccess {
  const _$_AddUserSuccess();

  @override
  String toString() {
    return 'AddUserState.addUserSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddUserSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addUserLoading(),
    @required TResult addUserSuccess(),
    @required TResult addUserFailed(),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addUserLoading(),
    TResult addUserSuccess(),
    TResult addUserFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserSuccess != null) {
      return addUserSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addUserLoading(_AddUserLoading value),
    @required TResult addUserSuccess(_AddUserSuccess value),
    @required TResult addUserFailed(_AddUserFailed value),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addUserLoading(_AddUserLoading value),
    TResult addUserSuccess(_AddUserSuccess value),
    TResult addUserFailed(_AddUserFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserSuccess != null) {
      return addUserSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddUserSuccess implements AddUserState {
  const factory _AddUserSuccess() = _$_AddUserSuccess;
}

/// @nodoc
abstract class _$AddUserFailedCopyWith<$Res> {
  factory _$AddUserFailedCopyWith(
          _AddUserFailed value, $Res Function(_AddUserFailed) then) =
      __$AddUserFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddUserFailedCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res>
    implements _$AddUserFailedCopyWith<$Res> {
  __$AddUserFailedCopyWithImpl(
      _AddUserFailed _value, $Res Function(_AddUserFailed) _then)
      : super(_value, (v) => _then(v as _AddUserFailed));

  @override
  _AddUserFailed get _value => super._value as _AddUserFailed;
}

/// @nodoc
class _$_AddUserFailed implements _AddUserFailed {
  const _$_AddUserFailed();

  @override
  String toString() {
    return 'AddUserState.addUserFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddUserFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addUserLoading(),
    @required TResult addUserSuccess(),
    @required TResult addUserFailed(),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addUserLoading(),
    TResult addUserSuccess(),
    TResult addUserFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserFailed != null) {
      return addUserFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addUserLoading(_AddUserLoading value),
    @required TResult addUserSuccess(_AddUserSuccess value),
    @required TResult addUserFailed(_AddUserFailed value),
  }) {
    assert(initial != null);
    assert(addUserLoading != null);
    assert(addUserSuccess != null);
    assert(addUserFailed != null);
    return addUserFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addUserLoading(_AddUserLoading value),
    TResult addUserSuccess(_AddUserSuccess value),
    TResult addUserFailed(_AddUserFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addUserFailed != null) {
      return addUserFailed(this);
    }
    return orElse();
  }
}

abstract class _AddUserFailed implements AddUserState {
  const factory _AddUserFailed() = _$_AddUserFailed;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  }) {
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AuthenticatedState authenticatedState(User user, UserModel userModel) {
    return _AuthenticatedState(
      user,
      userModel,
    );
  }

// ignore: unused_element
  _UnauthenticatedState unauthenticatedState() {
    return const _UnauthenticatedState();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticatedState(User user, UserModel userModel),
    @required TResult unauthenticatedState(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticatedState(User user, UserModel userModel),
    TResult unauthenticatedState(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticatedState(_AuthenticatedState value),
    @required TResult unauthenticatedState(_UnauthenticatedState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticatedState(_AuthenticatedState value),
    TResult unauthenticatedState(_UnauthenticatedState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required TResult authenticatedState(User user, UserModel userModel),
    @required TResult unauthenticatedState(),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticatedState(User user, UserModel userModel),
    TResult unauthenticatedState(),
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
    @required TResult authenticatedState(_AuthenticatedState value),
    @required TResult unauthenticatedState(_UnauthenticatedState value),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticatedState(_AuthenticatedState value),
    TResult unauthenticatedState(_UnauthenticatedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedStateCopyWith<$Res> {
  factory _$AuthenticatedStateCopyWith(
          _AuthenticatedState value, $Res Function(_AuthenticatedState) then) =
      __$AuthenticatedStateCopyWithImpl<$Res>;
  $Res call({User user, UserModel userModel});
}

/// @nodoc
class __$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedStateCopyWith<$Res> {
  __$AuthenticatedStateCopyWithImpl(
      _AuthenticatedState _value, $Res Function(_AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _AuthenticatedState));

  @override
  _AuthenticatedState get _value => super._value as _AuthenticatedState;

  @override
  $Res call({
    Object user = freezed,
    Object userModel = freezed,
  }) {
    return _then(_AuthenticatedState(
      user == freezed ? _value.user : user as User,
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

/// @nodoc
class _$_AuthenticatedState implements _AuthenticatedState {
  const _$_AuthenticatedState(this.user, this.userModel)
      : assert(user != null),
        assert(userModel != null);

  @override
  final User user;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AuthState.authenticatedState(user: $user, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticatedState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(userModel);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith =>
      __$AuthenticatedStateCopyWithImpl<_AuthenticatedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticatedState(User user, UserModel userModel),
    @required TResult unauthenticatedState(),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return authenticatedState(user, userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticatedState(User user, UserModel userModel),
    TResult unauthenticatedState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedState != null) {
      return authenticatedState(user, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticatedState(_AuthenticatedState value),
    @required TResult unauthenticatedState(_UnauthenticatedState value),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return authenticatedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticatedState(_AuthenticatedState value),
    TResult unauthenticatedState(_UnauthenticatedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticatedState != null) {
      return authenticatedState(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState implements AuthState {
  const factory _AuthenticatedState(User user, UserModel userModel) =
      _$_AuthenticatedState;

  User get user;
  UserModel get userModel;
  @JsonKey(ignore: true)
  _$AuthenticatedStateCopyWith<_AuthenticatedState> get copyWith;
}

/// @nodoc
abstract class _$UnauthenticatedStateCopyWith<$Res> {
  factory _$UnauthenticatedStateCopyWith(_UnauthenticatedState value,
          $Res Function(_UnauthenticatedState) then) =
      __$UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedStateCopyWith<$Res> {
  __$UnauthenticatedStateCopyWithImpl(
      _UnauthenticatedState _value, $Res Function(_UnauthenticatedState) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedState));

  @override
  _UnauthenticatedState get _value => super._value as _UnauthenticatedState;
}

/// @nodoc
class _$_UnauthenticatedState implements _UnauthenticatedState {
  const _$_UnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticatedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticatedState(User user, UserModel userModel),
    @required TResult unauthenticatedState(),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return unauthenticatedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticatedState(User user, UserModel userModel),
    TResult unauthenticatedState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticatedState != null) {
      return unauthenticatedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticatedState(_AuthenticatedState value),
    @required TResult unauthenticatedState(_UnauthenticatedState value),
  }) {
    assert(initial != null);
    assert(authenticatedState != null);
    assert(unauthenticatedState != null);
    return unauthenticatedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticatedState(_AuthenticatedState value),
    TResult unauthenticatedState(_UnauthenticatedState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticatedState != null) {
      return unauthenticatedState(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedState implements AuthState {
  const factory _UnauthenticatedState() = _$_UnauthenticatedState;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginButtonPressEventTearOff {
  const _$LoginButtonPressEventTearOff();

// ignore: unused_element
  _Started started({String username, String password}) {
    return _Started(
      username: username,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginButtonPressEvent = _$LoginButtonPressEventTearOff();

/// @nodoc
mixin _$LoginButtonPressEvent {
  String get username;
  String get password;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String username, String password),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String username, String password),
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

  @JsonKey(ignore: true)
  $LoginButtonPressEventCopyWith<LoginButtonPressEvent> get copyWith;
}

/// @nodoc
abstract class $LoginButtonPressEventCopyWith<$Res> {
  factory $LoginButtonPressEventCopyWith(LoginButtonPressEvent value,
          $Res Function(LoginButtonPressEvent) then) =
      _$LoginButtonPressEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginButtonPressEventCopyWithImpl<$Res>
    implements $LoginButtonPressEventCopyWith<$Res> {
  _$LoginButtonPressEventCopyWithImpl(this._value, this._then);

  final LoginButtonPressEvent _value;
  // ignore: unused_field
  final $Res Function(LoginButtonPressEvent) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $LoginButtonPressEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$LoginButtonPressEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_Started(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({this.username, this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginButtonPressEvent.started(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(String username, String password),
  }) {
    assert(started != null);
    return started(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(String username, String password),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(username, password);
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

abstract class _Started implements LoginButtonPressEvent {
  const factory _Started({String username, String password}) = _$_Started;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(User user, UserModel userModel) {
    return _Success(
      user,
      userModel,
    );
  }

// ignore: unused_element
  _Failure failure(String message) {
    return _Failure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user, UserModel userModel),
    @required TResult failure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user, UserModel userModel),
    TResult failure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
    return 'LoginState.initial()';
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
    @required TResult success(User user, UserModel userModel),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user, UserModel userModel),
    TResult failure(String message),
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
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
    return 'LoginState.loading()';
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
    @required TResult success(User user, UserModel userModel),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user, UserModel userModel),
    TResult failure(String message),
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
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User user, UserModel userModel});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object user = freezed,
    Object userModel = freezed,
  }) {
    return _then(_Success(
      user == freezed ? _value.user : user as User,
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.user, this.userModel)
      : assert(user != null),
        assert(userModel != null);

  @override
  final User user;
  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'LoginState.success(user: $user, userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
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
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user, UserModel userModel),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return success(user, userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user, UserModel userModel),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user, userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success(User user, UserModel userModel) = _$_Success;

  User get user;
  UserModel get userModel;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Failure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user, UserModel userModel),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user, UserModel userModel),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LoginState {
  const factory _Failure(String message) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

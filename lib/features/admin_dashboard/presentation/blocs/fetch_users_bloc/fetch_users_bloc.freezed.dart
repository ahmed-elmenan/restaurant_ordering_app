// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchUsersEventTearOff {
  const _$FetchUsersEventTearOff();

// ignore: unused_element
  _FetchUsers fetchUsers() {
    return const _FetchUsers();
  }
}

/// @nodoc
// ignore: unused_element
const $FetchUsersEvent = _$FetchUsersEventTearOff();

/// @nodoc
mixin _$FetchUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchUsers(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchUsers(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchUsers(_FetchUsers value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchUsers(_FetchUsers value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FetchUsersEventCopyWith<$Res> {
  factory $FetchUsersEventCopyWith(
          FetchUsersEvent value, $Res Function(FetchUsersEvent) then) =
      _$FetchUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchUsersEventCopyWithImpl<$Res>
    implements $FetchUsersEventCopyWith<$Res> {
  _$FetchUsersEventCopyWithImpl(this._value, this._then);

  final FetchUsersEvent _value;
  // ignore: unused_field
  final $Res Function(FetchUsersEvent) _then;
}

/// @nodoc
abstract class _$FetchUsersCopyWith<$Res> {
  factory _$FetchUsersCopyWith(
          _FetchUsers value, $Res Function(_FetchUsers) then) =
      __$FetchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchUsersCopyWithImpl<$Res>
    extends _$FetchUsersEventCopyWithImpl<$Res>
    implements _$FetchUsersCopyWith<$Res> {
  __$FetchUsersCopyWithImpl(
      _FetchUsers _value, $Res Function(_FetchUsers) _then)
      : super(_value, (v) => _then(v as _FetchUsers));

  @override
  _FetchUsers get _value => super._value as _FetchUsers;
}

/// @nodoc
class _$_FetchUsers implements _FetchUsers {
  const _$_FetchUsers();

  @override
  String toString() {
    return 'FetchUsersEvent.fetchUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchUsers(),
  }) {
    assert(fetchUsers != null);
    return fetchUsers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchUsers(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsers != null) {
      return fetchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchUsers(_FetchUsers value),
  }) {
    assert(fetchUsers != null);
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchUsers(_FetchUsers value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchUsers implements FetchUsersEvent {
  const factory _FetchUsers() = _$_FetchUsers;
}

/// @nodoc
class _$FetchUsersStateTearOff {
  const _$FetchUsersStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _FetchUsersLoading fetchUsersLoading() {
    return const _FetchUsersLoading();
  }

// ignore: unused_element
  _FetchUsersSuccess fetchUsersSuccess(List<UserModel> usersList) {
    return _FetchUsersSuccess(
      usersList,
    );
  }

// ignore: unused_element
  _FetchUsersFailure fetchUsersFailure() {
    return const _FetchUsersFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $FetchUsersState = _$FetchUsersStateTearOff();

/// @nodoc
mixin _$FetchUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult fetchUsersLoading(),
    @required TResult fetchUsersSuccess(List<UserModel> usersList),
    @required TResult fetchUsersFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult fetchUsersLoading(),
    TResult fetchUsersSuccess(List<UserModel> usersList),
    TResult fetchUsersFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult fetchUsersLoading(_FetchUsersLoading value),
    @required TResult fetchUsersSuccess(_FetchUsersSuccess value),
    @required TResult fetchUsersFailure(_FetchUsersFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult fetchUsersLoading(_FetchUsersLoading value),
    TResult fetchUsersSuccess(_FetchUsersSuccess value),
    TResult fetchUsersFailure(_FetchUsersFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FetchUsersStateCopyWith<$Res> {
  factory $FetchUsersStateCopyWith(
          FetchUsersState value, $Res Function(FetchUsersState) then) =
      _$FetchUsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchUsersStateCopyWithImpl<$Res>
    implements $FetchUsersStateCopyWith<$Res> {
  _$FetchUsersStateCopyWithImpl(this._value, this._then);

  final FetchUsersState _value;
  // ignore: unused_field
  final $Res Function(FetchUsersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FetchUsersStateCopyWithImpl<$Res>
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
    return 'FetchUsersState.initial()';
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
    @required TResult fetchUsersLoading(),
    @required TResult fetchUsersSuccess(List<UserModel> usersList),
    @required TResult fetchUsersFailure(),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult fetchUsersLoading(),
    TResult fetchUsersSuccess(List<UserModel> usersList),
    TResult fetchUsersFailure(),
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
    @required TResult fetchUsersLoading(_FetchUsersLoading value),
    @required TResult fetchUsersSuccess(_FetchUsersSuccess value),
    @required TResult fetchUsersFailure(_FetchUsersFailure value),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult fetchUsersLoading(_FetchUsersLoading value),
    TResult fetchUsersSuccess(_FetchUsersSuccess value),
    TResult fetchUsersFailure(_FetchUsersFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FetchUsersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchUsersLoadingCopyWith<$Res> {
  factory _$FetchUsersLoadingCopyWith(
          _FetchUsersLoading value, $Res Function(_FetchUsersLoading) then) =
      __$FetchUsersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchUsersLoadingCopyWithImpl<$Res>
    extends _$FetchUsersStateCopyWithImpl<$Res>
    implements _$FetchUsersLoadingCopyWith<$Res> {
  __$FetchUsersLoadingCopyWithImpl(
      _FetchUsersLoading _value, $Res Function(_FetchUsersLoading) _then)
      : super(_value, (v) => _then(v as _FetchUsersLoading));

  @override
  _FetchUsersLoading get _value => super._value as _FetchUsersLoading;
}

/// @nodoc
class _$_FetchUsersLoading implements _FetchUsersLoading {
  const _$_FetchUsersLoading();

  @override
  String toString() {
    return 'FetchUsersState.fetchUsersLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchUsersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult fetchUsersLoading(),
    @required TResult fetchUsersSuccess(List<UserModel> usersList),
    @required TResult fetchUsersFailure(),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult fetchUsersLoading(),
    TResult fetchUsersSuccess(List<UserModel> usersList),
    TResult fetchUsersFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersLoading != null) {
      return fetchUsersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult fetchUsersLoading(_FetchUsersLoading value),
    @required TResult fetchUsersSuccess(_FetchUsersSuccess value),
    @required TResult fetchUsersFailure(_FetchUsersFailure value),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult fetchUsersLoading(_FetchUsersLoading value),
    TResult fetchUsersSuccess(_FetchUsersSuccess value),
    TResult fetchUsersFailure(_FetchUsersFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersLoading != null) {
      return fetchUsersLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchUsersLoading implements FetchUsersState {
  const factory _FetchUsersLoading() = _$_FetchUsersLoading;
}

/// @nodoc
abstract class _$FetchUsersSuccessCopyWith<$Res> {
  factory _$FetchUsersSuccessCopyWith(
          _FetchUsersSuccess value, $Res Function(_FetchUsersSuccess) then) =
      __$FetchUsersSuccessCopyWithImpl<$Res>;
  $Res call({List<UserModel> usersList});
}

/// @nodoc
class __$FetchUsersSuccessCopyWithImpl<$Res>
    extends _$FetchUsersStateCopyWithImpl<$Res>
    implements _$FetchUsersSuccessCopyWith<$Res> {
  __$FetchUsersSuccessCopyWithImpl(
      _FetchUsersSuccess _value, $Res Function(_FetchUsersSuccess) _then)
      : super(_value, (v) => _then(v as _FetchUsersSuccess));

  @override
  _FetchUsersSuccess get _value => super._value as _FetchUsersSuccess;

  @override
  $Res call({
    Object usersList = freezed,
  }) {
    return _then(_FetchUsersSuccess(
      usersList == freezed ? _value.usersList : usersList as List<UserModel>,
    ));
  }
}

/// @nodoc
class _$_FetchUsersSuccess implements _FetchUsersSuccess {
  const _$_FetchUsersSuccess(this.usersList) : assert(usersList != null);

  @override
  final List<UserModel> usersList;

  @override
  String toString() {
    return 'FetchUsersState.fetchUsersSuccess(usersList: $usersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchUsersSuccess &&
            (identical(other.usersList, usersList) ||
                const DeepCollectionEquality()
                    .equals(other.usersList, usersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usersList);

  @JsonKey(ignore: true)
  @override
  _$FetchUsersSuccessCopyWith<_FetchUsersSuccess> get copyWith =>
      __$FetchUsersSuccessCopyWithImpl<_FetchUsersSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult fetchUsersLoading(),
    @required TResult fetchUsersSuccess(List<UserModel> usersList),
    @required TResult fetchUsersFailure(),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersSuccess(usersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult fetchUsersLoading(),
    TResult fetchUsersSuccess(List<UserModel> usersList),
    TResult fetchUsersFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersSuccess != null) {
      return fetchUsersSuccess(usersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult fetchUsersLoading(_FetchUsersLoading value),
    @required TResult fetchUsersSuccess(_FetchUsersSuccess value),
    @required TResult fetchUsersFailure(_FetchUsersFailure value),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult fetchUsersLoading(_FetchUsersLoading value),
    TResult fetchUsersSuccess(_FetchUsersSuccess value),
    TResult fetchUsersFailure(_FetchUsersFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersSuccess != null) {
      return fetchUsersSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchUsersSuccess implements FetchUsersState {
  const factory _FetchUsersSuccess(List<UserModel> usersList) =
      _$_FetchUsersSuccess;

  List<UserModel> get usersList;
  @JsonKey(ignore: true)
  _$FetchUsersSuccessCopyWith<_FetchUsersSuccess> get copyWith;
}

/// @nodoc
abstract class _$FetchUsersFailureCopyWith<$Res> {
  factory _$FetchUsersFailureCopyWith(
          _FetchUsersFailure value, $Res Function(_FetchUsersFailure) then) =
      __$FetchUsersFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchUsersFailureCopyWithImpl<$Res>
    extends _$FetchUsersStateCopyWithImpl<$Res>
    implements _$FetchUsersFailureCopyWith<$Res> {
  __$FetchUsersFailureCopyWithImpl(
      _FetchUsersFailure _value, $Res Function(_FetchUsersFailure) _then)
      : super(_value, (v) => _then(v as _FetchUsersFailure));

  @override
  _FetchUsersFailure get _value => super._value as _FetchUsersFailure;
}

/// @nodoc
class _$_FetchUsersFailure implements _FetchUsersFailure {
  const _$_FetchUsersFailure();

  @override
  String toString() {
    return 'FetchUsersState.fetchUsersFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchUsersFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult fetchUsersLoading(),
    @required TResult fetchUsersSuccess(List<UserModel> usersList),
    @required TResult fetchUsersFailure(),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult fetchUsersLoading(),
    TResult fetchUsersSuccess(List<UserModel> usersList),
    TResult fetchUsersFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersFailure != null) {
      return fetchUsersFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult fetchUsersLoading(_FetchUsersLoading value),
    @required TResult fetchUsersSuccess(_FetchUsersSuccess value),
    @required TResult fetchUsersFailure(_FetchUsersFailure value),
  }) {
    assert(initial != null);
    assert(fetchUsersLoading != null);
    assert(fetchUsersSuccess != null);
    assert(fetchUsersFailure != null);
    return fetchUsersFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult fetchUsersLoading(_FetchUsersLoading value),
    TResult fetchUsersSuccess(_FetchUsersSuccess value),
    TResult fetchUsersFailure(_FetchUsersFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchUsersFailure != null) {
      return fetchUsersFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchUsersFailure implements FetchUsersState {
  const factory _FetchUsersFailure() = _$_FetchUsersFailure;
}

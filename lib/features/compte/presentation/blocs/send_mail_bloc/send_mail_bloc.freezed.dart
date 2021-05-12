// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'send_mail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SendMailEventTearOff {
  const _$SendMailEventTearOff();

// ignore: unused_element
  _SendMailButtonPressed sendMailButtonPressed(
      User user, UserModel usermodel, String verificationCode) {
    return _SendMailButtonPressed(
      user,
      usermodel,
      verificationCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SendMailEvent = _$SendMailEventTearOff();

/// @nodoc
mixin _$SendMailEvent {
  User get user;
  UserModel get usermodel;
  String get verificationCode;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult sendMailButtonPressed(
            User user, UserModel usermodel, String verificationCode),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult sendMailButtonPressed(
        User user, UserModel usermodel, String verificationCode),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult sendMailButtonPressed(_SendMailButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult sendMailButtonPressed(_SendMailButtonPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SendMailEventCopyWith<SendMailEvent> get copyWith;
}

/// @nodoc
abstract class $SendMailEventCopyWith<$Res> {
  factory $SendMailEventCopyWith(
          SendMailEvent value, $Res Function(SendMailEvent) then) =
      _$SendMailEventCopyWithImpl<$Res>;
  $Res call({User user, UserModel usermodel, String verificationCode});
}

/// @nodoc
class _$SendMailEventCopyWithImpl<$Res>
    implements $SendMailEventCopyWith<$Res> {
  _$SendMailEventCopyWithImpl(this._value, this._then);

  final SendMailEvent _value;
  // ignore: unused_field
  final $Res Function(SendMailEvent) _then;

  @override
  $Res call({
    Object user = freezed,
    Object usermodel = freezed,
    Object verificationCode = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      usermodel:
          usermodel == freezed ? _value.usermodel : usermodel as UserModel,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as String,
    ));
  }
}

/// @nodoc
abstract class _$SendMailButtonPressedCopyWith<$Res>
    implements $SendMailEventCopyWith<$Res> {
  factory _$SendMailButtonPressedCopyWith(_SendMailButtonPressed value,
          $Res Function(_SendMailButtonPressed) then) =
      __$SendMailButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({User user, UserModel usermodel, String verificationCode});
}

/// @nodoc
class __$SendMailButtonPressedCopyWithImpl<$Res>
    extends _$SendMailEventCopyWithImpl<$Res>
    implements _$SendMailButtonPressedCopyWith<$Res> {
  __$SendMailButtonPressedCopyWithImpl(_SendMailButtonPressed _value,
      $Res Function(_SendMailButtonPressed) _then)
      : super(_value, (v) => _then(v as _SendMailButtonPressed));

  @override
  _SendMailButtonPressed get _value => super._value as _SendMailButtonPressed;

  @override
  $Res call({
    Object user = freezed,
    Object usermodel = freezed,
    Object verificationCode = freezed,
  }) {
    return _then(_SendMailButtonPressed(
      user == freezed ? _value.user : user as User,
      usermodel == freezed ? _value.usermodel : usermodel as UserModel,
      verificationCode == freezed
          ? _value.verificationCode
          : verificationCode as String,
    ));
  }
}

/// @nodoc
class _$_SendMailButtonPressed implements _SendMailButtonPressed {
  const _$_SendMailButtonPressed(
      this.user, this.usermodel, this.verificationCode)
      : assert(user != null),
        assert(usermodel != null),
        assert(verificationCode != null);

  @override
  final User user;
  @override
  final UserModel usermodel;
  @override
  final String verificationCode;

  @override
  String toString() {
    return 'SendMailEvent.sendMailButtonPressed(user: $user, usermodel: $usermodel, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMailButtonPressed &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.usermodel, usermodel) ||
                const DeepCollectionEquality()
                    .equals(other.usermodel, usermodel)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(usermodel) ^
      const DeepCollectionEquality().hash(verificationCode);

  @JsonKey(ignore: true)
  @override
  _$SendMailButtonPressedCopyWith<_SendMailButtonPressed> get copyWith =>
      __$SendMailButtonPressedCopyWithImpl<_SendMailButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult sendMailButtonPressed(
            User user, UserModel usermodel, String verificationCode),
  }) {
    assert(sendMailButtonPressed != null);
    return sendMailButtonPressed(user, usermodel, verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult sendMailButtonPressed(
        User user, UserModel usermodel, String verificationCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMailButtonPressed != null) {
      return sendMailButtonPressed(user, usermodel, verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult sendMailButtonPressed(_SendMailButtonPressed value),
  }) {
    assert(sendMailButtonPressed != null);
    return sendMailButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult sendMailButtonPressed(_SendMailButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMailButtonPressed != null) {
      return sendMailButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SendMailButtonPressed implements SendMailEvent {
  const factory _SendMailButtonPressed(
          User user, UserModel usermodel, String verificationCode) =
      _$_SendMailButtonPressed;

  @override
  User get user;
  @override
  UserModel get usermodel;
  @override
  String get verificationCode;
  @override
  @JsonKey(ignore: true)
  _$SendMailButtonPressedCopyWith<_SendMailButtonPressed> get copyWith;
}

/// @nodoc
class _$SendMailStateTearOff {
  const _$SendMailStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _MailSentLoading mailSentLoading() {
    return const _MailSentLoading();
  }

// ignore: unused_element
  _MailSentSuccess mailSentSuccess() {
    return const _MailSentSuccess();
  }

// ignore: unused_element
  _MailSentFailure mailSentFailure() {
    return const _MailSentFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $SendMailState = _$SendMailStateTearOff();

/// @nodoc
mixin _$SendMailState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult mailSentLoading(),
    @required TResult mailSentSuccess(),
    @required TResult mailSentFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult mailSentLoading(),
    TResult mailSentSuccess(),
    TResult mailSentFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult mailSentLoading(_MailSentLoading value),
    @required TResult mailSentSuccess(_MailSentSuccess value),
    @required TResult mailSentFailure(_MailSentFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult mailSentLoading(_MailSentLoading value),
    TResult mailSentSuccess(_MailSentSuccess value),
    TResult mailSentFailure(_MailSentFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SendMailStateCopyWith<$Res> {
  factory $SendMailStateCopyWith(
          SendMailState value, $Res Function(SendMailState) then) =
      _$SendMailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMailStateCopyWithImpl<$Res>
    implements $SendMailStateCopyWith<$Res> {
  _$SendMailStateCopyWithImpl(this._value, this._then);

  final SendMailState _value;
  // ignore: unused_field
  final $Res Function(SendMailState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SendMailStateCopyWithImpl<$Res>
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
    return 'SendMailState.initial()';
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
    @required TResult mailSentLoading(),
    @required TResult mailSentSuccess(),
    @required TResult mailSentFailure(),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult mailSentLoading(),
    TResult mailSentSuccess(),
    TResult mailSentFailure(),
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
    @required TResult mailSentLoading(_MailSentLoading value),
    @required TResult mailSentSuccess(_MailSentSuccess value),
    @required TResult mailSentFailure(_MailSentFailure value),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult mailSentLoading(_MailSentLoading value),
    TResult mailSentSuccess(_MailSentSuccess value),
    TResult mailSentFailure(_MailSentFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendMailState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$MailSentLoadingCopyWith<$Res> {
  factory _$MailSentLoadingCopyWith(
          _MailSentLoading value, $Res Function(_MailSentLoading) then) =
      __$MailSentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$MailSentLoadingCopyWithImpl<$Res>
    extends _$SendMailStateCopyWithImpl<$Res>
    implements _$MailSentLoadingCopyWith<$Res> {
  __$MailSentLoadingCopyWithImpl(
      _MailSentLoading _value, $Res Function(_MailSentLoading) _then)
      : super(_value, (v) => _then(v as _MailSentLoading));

  @override
  _MailSentLoading get _value => super._value as _MailSentLoading;
}

/// @nodoc
class _$_MailSentLoading implements _MailSentLoading {
  const _$_MailSentLoading();

  @override
  String toString() {
    return 'SendMailState.mailSentLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MailSentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult mailSentLoading(),
    @required TResult mailSentSuccess(),
    @required TResult mailSentFailure(),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult mailSentLoading(),
    TResult mailSentSuccess(),
    TResult mailSentFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentLoading != null) {
      return mailSentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult mailSentLoading(_MailSentLoading value),
    @required TResult mailSentSuccess(_MailSentSuccess value),
    @required TResult mailSentFailure(_MailSentFailure value),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult mailSentLoading(_MailSentLoading value),
    TResult mailSentSuccess(_MailSentSuccess value),
    TResult mailSentFailure(_MailSentFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentLoading != null) {
      return mailSentLoading(this);
    }
    return orElse();
  }
}

abstract class _MailSentLoading implements SendMailState {
  const factory _MailSentLoading() = _$_MailSentLoading;
}

/// @nodoc
abstract class _$MailSentSuccessCopyWith<$Res> {
  factory _$MailSentSuccessCopyWith(
          _MailSentSuccess value, $Res Function(_MailSentSuccess) then) =
      __$MailSentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$MailSentSuccessCopyWithImpl<$Res>
    extends _$SendMailStateCopyWithImpl<$Res>
    implements _$MailSentSuccessCopyWith<$Res> {
  __$MailSentSuccessCopyWithImpl(
      _MailSentSuccess _value, $Res Function(_MailSentSuccess) _then)
      : super(_value, (v) => _then(v as _MailSentSuccess));

  @override
  _MailSentSuccess get _value => super._value as _MailSentSuccess;
}

/// @nodoc
class _$_MailSentSuccess implements _MailSentSuccess {
  const _$_MailSentSuccess();

  @override
  String toString() {
    return 'SendMailState.mailSentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MailSentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult mailSentLoading(),
    @required TResult mailSentSuccess(),
    @required TResult mailSentFailure(),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult mailSentLoading(),
    TResult mailSentSuccess(),
    TResult mailSentFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentSuccess != null) {
      return mailSentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult mailSentLoading(_MailSentLoading value),
    @required TResult mailSentSuccess(_MailSentSuccess value),
    @required TResult mailSentFailure(_MailSentFailure value),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult mailSentLoading(_MailSentLoading value),
    TResult mailSentSuccess(_MailSentSuccess value),
    TResult mailSentFailure(_MailSentFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentSuccess != null) {
      return mailSentSuccess(this);
    }
    return orElse();
  }
}

abstract class _MailSentSuccess implements SendMailState {
  const factory _MailSentSuccess() = _$_MailSentSuccess;
}

/// @nodoc
abstract class _$MailSentFailureCopyWith<$Res> {
  factory _$MailSentFailureCopyWith(
          _MailSentFailure value, $Res Function(_MailSentFailure) then) =
      __$MailSentFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$MailSentFailureCopyWithImpl<$Res>
    extends _$SendMailStateCopyWithImpl<$Res>
    implements _$MailSentFailureCopyWith<$Res> {
  __$MailSentFailureCopyWithImpl(
      _MailSentFailure _value, $Res Function(_MailSentFailure) _then)
      : super(_value, (v) => _then(v as _MailSentFailure));

  @override
  _MailSentFailure get _value => super._value as _MailSentFailure;
}

/// @nodoc
class _$_MailSentFailure implements _MailSentFailure {
  const _$_MailSentFailure();

  @override
  String toString() {
    return 'SendMailState.mailSentFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MailSentFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult mailSentLoading(),
    @required TResult mailSentSuccess(),
    @required TResult mailSentFailure(),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult mailSentLoading(),
    TResult mailSentSuccess(),
    TResult mailSentFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentFailure != null) {
      return mailSentFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult mailSentLoading(_MailSentLoading value),
    @required TResult mailSentSuccess(_MailSentSuccess value),
    @required TResult mailSentFailure(_MailSentFailure value),
  }) {
    assert(initial != null);
    assert(mailSentLoading != null);
    assert(mailSentSuccess != null);
    assert(mailSentFailure != null);
    return mailSentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult mailSentLoading(_MailSentLoading value),
    TResult mailSentSuccess(_MailSentSuccess value),
    TResult mailSentFailure(_MailSentFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (mailSentFailure != null) {
      return mailSentFailure(this);
    }
    return orElse();
  }
}

abstract class _MailSentFailure implements SendMailState {
  const factory _MailSentFailure() = _$_MailSentFailure;
}

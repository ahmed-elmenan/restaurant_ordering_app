// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddOrderEventTearOff {
  const _$AddOrderEventTearOff();

// ignore: unused_element
  _AddOrderButtonPressed addOrderButtonPressed(OrderModel order) {
    return _AddOrderButtonPressed(
      order,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddOrderEvent = _$AddOrderEventTearOff();

/// @nodoc
mixin _$AddOrderEvent {
  OrderModel get order;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addOrderButtonPressed(OrderModel order),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addOrderButtonPressed(OrderModel order),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addOrderButtonPressed(_AddOrderButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addOrderButtonPressed(_AddOrderButtonPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AddOrderEventCopyWith<AddOrderEvent> get copyWith;
}

/// @nodoc
abstract class $AddOrderEventCopyWith<$Res> {
  factory $AddOrderEventCopyWith(
          AddOrderEvent value, $Res Function(AddOrderEvent) then) =
      _$AddOrderEventCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class _$AddOrderEventCopyWithImpl<$Res>
    implements $AddOrderEventCopyWith<$Res> {
  _$AddOrderEventCopyWithImpl(this._value, this._then);

  final AddOrderEvent _value;
  // ignore: unused_field
  final $Res Function(AddOrderEvent) _then;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed ? _value.order : order as OrderModel,
    ));
  }
}

/// @nodoc
abstract class _$AddOrderButtonPressedCopyWith<$Res>
    implements $AddOrderEventCopyWith<$Res> {
  factory _$AddOrderButtonPressedCopyWith(_AddOrderButtonPressed value,
          $Res Function(_AddOrderButtonPressed) then) =
      __$AddOrderButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({OrderModel order});
}

/// @nodoc
class __$AddOrderButtonPressedCopyWithImpl<$Res>
    extends _$AddOrderEventCopyWithImpl<$Res>
    implements _$AddOrderButtonPressedCopyWith<$Res> {
  __$AddOrderButtonPressedCopyWithImpl(_AddOrderButtonPressed _value,
      $Res Function(_AddOrderButtonPressed) _then)
      : super(_value, (v) => _then(v as _AddOrderButtonPressed));

  @override
  _AddOrderButtonPressed get _value => super._value as _AddOrderButtonPressed;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_AddOrderButtonPressed(
      order == freezed ? _value.order : order as OrderModel,
    ));
  }
}

/// @nodoc
class _$_AddOrderButtonPressed implements _AddOrderButtonPressed {
  const _$_AddOrderButtonPressed(this.order) : assert(order != null);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'AddOrderEvent.addOrderButtonPressed(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOrderButtonPressed &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$AddOrderButtonPressedCopyWith<_AddOrderButtonPressed> get copyWith =>
      __$AddOrderButtonPressedCopyWithImpl<_AddOrderButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addOrderButtonPressed(OrderModel order),
  }) {
    assert(addOrderButtonPressed != null);
    return addOrderButtonPressed(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addOrderButtonPressed(OrderModel order),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderButtonPressed != null) {
      return addOrderButtonPressed(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addOrderButtonPressed(_AddOrderButtonPressed value),
  }) {
    assert(addOrderButtonPressed != null);
    return addOrderButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addOrderButtonPressed(_AddOrderButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderButtonPressed != null) {
      return addOrderButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddOrderButtonPressed implements AddOrderEvent {
  const factory _AddOrderButtonPressed(OrderModel order) =
      _$_AddOrderButtonPressed;

  @override
  OrderModel get order;
  @override
  @JsonKey(ignore: true)
  _$AddOrderButtonPressedCopyWith<_AddOrderButtonPressed> get copyWith;
}

/// @nodoc
class _$AddOrderStateTearOff {
  const _$AddOrderStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AddOrderLoading addOrderLoading() {
    return const _AddOrderLoading();
  }

// ignore: unused_element
  _AddOrderSuccess addOrderSuccess() {
    return const _AddOrderSuccess();
  }

// ignore: unused_element
  _AddOrderFailed addOrderFailed(String message) {
    return _AddOrderFailed(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddOrderState = _$AddOrderStateTearOff();

/// @nodoc
mixin _$AddOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addOrderLoading(),
    @required TResult addOrderSuccess(),
    @required TResult addOrderFailed(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addOrderLoading(),
    TResult addOrderSuccess(),
    TResult addOrderFailed(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addOrderLoading(_AddOrderLoading value),
    @required TResult addOrderSuccess(_AddOrderSuccess value),
    @required TResult addOrderFailed(_AddOrderFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addOrderLoading(_AddOrderLoading value),
    TResult addOrderSuccess(_AddOrderSuccess value),
    TResult addOrderFailed(_AddOrderFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddOrderStateCopyWith<$Res> {
  factory $AddOrderStateCopyWith(
          AddOrderState value, $Res Function(AddOrderState) then) =
      _$AddOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddOrderStateCopyWithImpl<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  _$AddOrderStateCopyWithImpl(this._value, this._then);

  final AddOrderState _value;
  // ignore: unused_field
  final $Res Function(AddOrderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddOrderStateCopyWithImpl<$Res>
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
    return 'AddOrderState.initial()';
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
    @required TResult addOrderLoading(),
    @required TResult addOrderSuccess(),
    @required TResult addOrderFailed(String message),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addOrderLoading(),
    TResult addOrderSuccess(),
    TResult addOrderFailed(String message),
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
    @required TResult addOrderLoading(_AddOrderLoading value),
    @required TResult addOrderSuccess(_AddOrderSuccess value),
    @required TResult addOrderFailed(_AddOrderFailed value),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addOrderLoading(_AddOrderLoading value),
    TResult addOrderSuccess(_AddOrderSuccess value),
    TResult addOrderFailed(_AddOrderFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddOrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddOrderLoadingCopyWith<$Res> {
  factory _$AddOrderLoadingCopyWith(
          _AddOrderLoading value, $Res Function(_AddOrderLoading) then) =
      __$AddOrderLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddOrderLoadingCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res>
    implements _$AddOrderLoadingCopyWith<$Res> {
  __$AddOrderLoadingCopyWithImpl(
      _AddOrderLoading _value, $Res Function(_AddOrderLoading) _then)
      : super(_value, (v) => _then(v as _AddOrderLoading));

  @override
  _AddOrderLoading get _value => super._value as _AddOrderLoading;
}

/// @nodoc
class _$_AddOrderLoading implements _AddOrderLoading {
  const _$_AddOrderLoading();

  @override
  String toString() {
    return 'AddOrderState.addOrderLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddOrderLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addOrderLoading(),
    @required TResult addOrderSuccess(),
    @required TResult addOrderFailed(String message),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addOrderLoading(),
    TResult addOrderSuccess(),
    TResult addOrderFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderLoading != null) {
      return addOrderLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addOrderLoading(_AddOrderLoading value),
    @required TResult addOrderSuccess(_AddOrderSuccess value),
    @required TResult addOrderFailed(_AddOrderFailed value),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addOrderLoading(_AddOrderLoading value),
    TResult addOrderSuccess(_AddOrderSuccess value),
    TResult addOrderFailed(_AddOrderFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderLoading != null) {
      return addOrderLoading(this);
    }
    return orElse();
  }
}

abstract class _AddOrderLoading implements AddOrderState {
  const factory _AddOrderLoading() = _$_AddOrderLoading;
}

/// @nodoc
abstract class _$AddOrderSuccessCopyWith<$Res> {
  factory _$AddOrderSuccessCopyWith(
          _AddOrderSuccess value, $Res Function(_AddOrderSuccess) then) =
      __$AddOrderSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddOrderSuccessCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res>
    implements _$AddOrderSuccessCopyWith<$Res> {
  __$AddOrderSuccessCopyWithImpl(
      _AddOrderSuccess _value, $Res Function(_AddOrderSuccess) _then)
      : super(_value, (v) => _then(v as _AddOrderSuccess));

  @override
  _AddOrderSuccess get _value => super._value as _AddOrderSuccess;
}

/// @nodoc
class _$_AddOrderSuccess implements _AddOrderSuccess {
  const _$_AddOrderSuccess();

  @override
  String toString() {
    return 'AddOrderState.addOrderSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddOrderSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addOrderLoading(),
    @required TResult addOrderSuccess(),
    @required TResult addOrderFailed(String message),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addOrderLoading(),
    TResult addOrderSuccess(),
    TResult addOrderFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderSuccess != null) {
      return addOrderSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addOrderLoading(_AddOrderLoading value),
    @required TResult addOrderSuccess(_AddOrderSuccess value),
    @required TResult addOrderFailed(_AddOrderFailed value),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addOrderLoading(_AddOrderLoading value),
    TResult addOrderSuccess(_AddOrderSuccess value),
    TResult addOrderFailed(_AddOrderFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderSuccess != null) {
      return addOrderSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddOrderSuccess implements AddOrderState {
  const factory _AddOrderSuccess() = _$_AddOrderSuccess;
}

/// @nodoc
abstract class _$AddOrderFailedCopyWith<$Res> {
  factory _$AddOrderFailedCopyWith(
          _AddOrderFailed value, $Res Function(_AddOrderFailed) then) =
      __$AddOrderFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$AddOrderFailedCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res>
    implements _$AddOrderFailedCopyWith<$Res> {
  __$AddOrderFailedCopyWithImpl(
      _AddOrderFailed _value, $Res Function(_AddOrderFailed) _then)
      : super(_value, (v) => _then(v as _AddOrderFailed));

  @override
  _AddOrderFailed get _value => super._value as _AddOrderFailed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_AddOrderFailed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_AddOrderFailed implements _AddOrderFailed {
  const _$_AddOrderFailed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AddOrderState.addOrderFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOrderFailed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AddOrderFailedCopyWith<_AddOrderFailed> get copyWith =>
      __$AddOrderFailedCopyWithImpl<_AddOrderFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addOrderLoading(),
    @required TResult addOrderSuccess(),
    @required TResult addOrderFailed(String message),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addOrderLoading(),
    TResult addOrderSuccess(),
    TResult addOrderFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderFailed != null) {
      return addOrderFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addOrderLoading(_AddOrderLoading value),
    @required TResult addOrderSuccess(_AddOrderSuccess value),
    @required TResult addOrderFailed(_AddOrderFailed value),
  }) {
    assert(initial != null);
    assert(addOrderLoading != null);
    assert(addOrderSuccess != null);
    assert(addOrderFailed != null);
    return addOrderFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addOrderLoading(_AddOrderLoading value),
    TResult addOrderSuccess(_AddOrderSuccess value),
    TResult addOrderFailed(_AddOrderFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addOrderFailed != null) {
      return addOrderFailed(this);
    }
    return orElse();
  }
}

abstract class _AddOrderFailed implements AddOrderState {
  const factory _AddOrderFailed(String message) = _$_AddOrderFailed;

  String get message;
  @JsonKey(ignore: true)
  _$AddOrderFailedCopyWith<_AddOrderFailed> get copyWith;
}

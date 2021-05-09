// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_order_state_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateOrderStateEventTearOff {
  const _$UpdateOrderStateEventTearOff();

// ignore: unused_element
  _UpdateOrderState updateOrderState(OrderModel order) {
    return _UpdateOrderState(
      order,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateOrderStateEvent = _$UpdateOrderStateEventTearOff();

/// @nodoc
mixin _$UpdateOrderStateEvent {
  OrderModel get order;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateOrderState(OrderModel order),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateOrderState(OrderModel order),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateOrderState(_UpdateOrderState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateOrderState(_UpdateOrderState value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $UpdateOrderStateEventCopyWith<UpdateOrderStateEvent> get copyWith;
}

/// @nodoc
abstract class $UpdateOrderStateEventCopyWith<$Res> {
  factory $UpdateOrderStateEventCopyWith(UpdateOrderStateEvent value,
          $Res Function(UpdateOrderStateEvent) then) =
      _$UpdateOrderStateEventCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class _$UpdateOrderStateEventCopyWithImpl<$Res>
    implements $UpdateOrderStateEventCopyWith<$Res> {
  _$UpdateOrderStateEventCopyWithImpl(this._value, this._then);

  final UpdateOrderStateEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateOrderStateEvent) _then;

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
abstract class _$UpdateOrderStateCopyWith<$Res>
    implements $UpdateOrderStateEventCopyWith<$Res> {
  factory _$UpdateOrderStateCopyWith(
          _UpdateOrderState value, $Res Function(_UpdateOrderState) then) =
      __$UpdateOrderStateCopyWithImpl<$Res>;
  @override
  $Res call({OrderModel order});
}

/// @nodoc
class __$UpdateOrderStateCopyWithImpl<$Res>
    extends _$UpdateOrderStateEventCopyWithImpl<$Res>
    implements _$UpdateOrderStateCopyWith<$Res> {
  __$UpdateOrderStateCopyWithImpl(
      _UpdateOrderState _value, $Res Function(_UpdateOrderState) _then)
      : super(_value, (v) => _then(v as _UpdateOrderState));

  @override
  _UpdateOrderState get _value => super._value as _UpdateOrderState;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_UpdateOrderState(
      order == freezed ? _value.order : order as OrderModel,
    ));
  }
}

/// @nodoc
class _$_UpdateOrderState implements _UpdateOrderState {
  const _$_UpdateOrderState(this.order) : assert(order != null);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'UpdateOrderStateEvent.updateOrderState(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderState &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$UpdateOrderStateCopyWith<_UpdateOrderState> get copyWith =>
      __$UpdateOrderStateCopyWithImpl<_UpdateOrderState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateOrderState(OrderModel order),
  }) {
    assert(updateOrderState != null);
    return updateOrderState(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateOrderState(OrderModel order),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderState != null) {
      return updateOrderState(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateOrderState(_UpdateOrderState value),
  }) {
    assert(updateOrderState != null);
    return updateOrderState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateOrderState(_UpdateOrderState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderState != null) {
      return updateOrderState(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderState implements UpdateOrderStateEvent {
  const factory _UpdateOrderState(OrderModel order) = _$_UpdateOrderState;

  @override
  OrderModel get order;
  @override
  @JsonKey(ignore: true)
  _$UpdateOrderStateCopyWith<_UpdateOrderState> get copyWith;
}

/// @nodoc
class _$UpdateOrderStateStateTearOff {
  const _$UpdateOrderStateStateTearOff();

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
const $UpdateOrderStateState = _$UpdateOrderStateStateTearOff();

/// @nodoc
mixin _$UpdateOrderStateState {
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
abstract class $UpdateOrderStateStateCopyWith<$Res> {
  factory $UpdateOrderStateStateCopyWith(UpdateOrderStateState value,
          $Res Function(UpdateOrderStateState) then) =
      _$UpdateOrderStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateOrderStateStateCopyWithImpl<$Res>
    implements $UpdateOrderStateStateCopyWith<$Res> {
  _$UpdateOrderStateStateCopyWithImpl(this._value, this._then);

  final UpdateOrderStateState _value;
  // ignore: unused_field
  final $Res Function(UpdateOrderStateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UpdateOrderStateStateCopyWithImpl<$Res>
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
    return 'UpdateOrderStateState.initial()';
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

abstract class _Initial implements UpdateOrderStateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$UpdateOrderStateStateCopyWithImpl<$Res>
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
    return 'UpdateOrderStateState.loading()';
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

abstract class _Loading implements UpdateOrderStateState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$UpdateOrderStateStateCopyWithImpl<$Res>
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
    return 'UpdateOrderStateState.success()';
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

abstract class _Success implements UpdateOrderStateState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$UpdateOrderStateStateCopyWithImpl<$Res>
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
    return 'UpdateOrderStateState.failed()';
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

abstract class _Failed implements UpdateOrderStateState {
  const factory _Failed() = _$_Failed;
}

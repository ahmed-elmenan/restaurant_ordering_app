// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrdersEventTearOff {
  const _$OrdersEventTearOff();

// ignore: unused_element
  _LoadOrders loadOrders(String userId) {
    return _LoadOrders(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  String get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadOrders(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadOrders(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadOrders(_LoadOrders value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadOrders(_LoadOrders value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $OrdersEventCopyWith<OrdersEvent> get copyWith;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$LoadOrdersCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$LoadOrdersCopyWith(
          _LoadOrders value, $Res Function(_LoadOrders) then) =
      __$LoadOrdersCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$LoadOrdersCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements _$LoadOrdersCopyWith<$Res> {
  __$LoadOrdersCopyWithImpl(
      _LoadOrders _value, $Res Function(_LoadOrders) _then)
      : super(_value, (v) => _then(v as _LoadOrders));

  @override
  _LoadOrders get _value => super._value as _LoadOrders;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_LoadOrders(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_LoadOrders implements _LoadOrders {
  const _$_LoadOrders(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString() {
    return 'OrdersEvent.loadOrders(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrders &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$LoadOrdersCopyWith<_LoadOrders> get copyWith =>
      __$LoadOrdersCopyWithImpl<_LoadOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadOrders(String userId),
  }) {
    assert(loadOrders != null);
    return loadOrders(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadOrders(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrders != null) {
      return loadOrders(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadOrders(_LoadOrders value),
  }) {
    assert(loadOrders != null);
    return loadOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadOrders(_LoadOrders value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrders != null) {
      return loadOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadOrders implements OrdersEvent {
  const factory _LoadOrders(String userId) = _$_LoadOrders;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$LoadOrdersCopyWith<_LoadOrders> get copyWith;
}

/// @nodoc
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadOrdersLoading loadOrdersLoading() {
    return const _LoadOrdersLoading();
  }

// ignore: unused_element
  _LoadOrdersSuccess loadOrdersSuccess(List<OrderModel> ordersList) {
    return _LoadOrdersSuccess(
      ordersList,
    );
  }

// ignore: unused_element
  _LoadOrdersFailed loadOrdersFailed(String message) {
    return _LoadOrdersFailed(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrdersState = _$OrdersStateTearOff();

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrdersLoading(),
    @required TResult loadOrdersSuccess(List<OrderModel> ordersList),
    @required TResult loadOrdersFailed(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrdersLoading(),
    TResult loadOrdersSuccess(List<OrderModel> ordersList),
    TResult loadOrdersFailed(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrdersLoading(_LoadOrdersLoading value),
    @required TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    @required TResult loadOrdersFailed(_LoadOrdersFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrdersLoading(_LoadOrdersLoading value),
    TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    TResult loadOrdersFailed(_LoadOrdersFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
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
    return 'OrdersState.initial()';
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
    @required TResult loadOrdersLoading(),
    @required TResult loadOrdersSuccess(List<OrderModel> ordersList),
    @required TResult loadOrdersFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrdersLoading(),
    TResult loadOrdersSuccess(List<OrderModel> ordersList),
    TResult loadOrdersFailed(String message),
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
    @required TResult loadOrdersLoading(_LoadOrdersLoading value),
    @required TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    @required TResult loadOrdersFailed(_LoadOrdersFailed value),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrdersLoading(_LoadOrdersLoading value),
    TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    TResult loadOrdersFailed(_LoadOrdersFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadOrdersLoadingCopyWith<$Res> {
  factory _$LoadOrdersLoadingCopyWith(
          _LoadOrdersLoading value, $Res Function(_LoadOrdersLoading) then) =
      __$LoadOrdersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadOrdersLoadingCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$LoadOrdersLoadingCopyWith<$Res> {
  __$LoadOrdersLoadingCopyWithImpl(
      _LoadOrdersLoading _value, $Res Function(_LoadOrdersLoading) _then)
      : super(_value, (v) => _then(v as _LoadOrdersLoading));

  @override
  _LoadOrdersLoading get _value => super._value as _LoadOrdersLoading;
}

/// @nodoc
class _$_LoadOrdersLoading implements _LoadOrdersLoading {
  const _$_LoadOrdersLoading();

  @override
  String toString() {
    return 'OrdersState.loadOrdersLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadOrdersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrdersLoading(),
    @required TResult loadOrdersSuccess(List<OrderModel> ordersList),
    @required TResult loadOrdersFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrdersLoading(),
    TResult loadOrdersSuccess(List<OrderModel> ordersList),
    TResult loadOrdersFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersLoading != null) {
      return loadOrdersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrdersLoading(_LoadOrdersLoading value),
    @required TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    @required TResult loadOrdersFailed(_LoadOrdersFailed value),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrdersLoading(_LoadOrdersLoading value),
    TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    TResult loadOrdersFailed(_LoadOrdersFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersLoading != null) {
      return loadOrdersLoading(this);
    }
    return orElse();
  }
}

abstract class _LoadOrdersLoading implements OrdersState {
  const factory _LoadOrdersLoading() = _$_LoadOrdersLoading;
}

/// @nodoc
abstract class _$LoadOrdersSuccessCopyWith<$Res> {
  factory _$LoadOrdersSuccessCopyWith(
          _LoadOrdersSuccess value, $Res Function(_LoadOrdersSuccess) then) =
      __$LoadOrdersSuccessCopyWithImpl<$Res>;
  $Res call({List<OrderModel> ordersList});
}

/// @nodoc
class __$LoadOrdersSuccessCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$LoadOrdersSuccessCopyWith<$Res> {
  __$LoadOrdersSuccessCopyWithImpl(
      _LoadOrdersSuccess _value, $Res Function(_LoadOrdersSuccess) _then)
      : super(_value, (v) => _then(v as _LoadOrdersSuccess));

  @override
  _LoadOrdersSuccess get _value => super._value as _LoadOrdersSuccess;

  @override
  $Res call({
    Object ordersList = freezed,
  }) {
    return _then(_LoadOrdersSuccess(
      ordersList == freezed
          ? _value.ordersList
          : ordersList as List<OrderModel>,
    ));
  }
}

/// @nodoc
class _$_LoadOrdersSuccess implements _LoadOrdersSuccess {
  const _$_LoadOrdersSuccess(this.ordersList) : assert(ordersList != null);

  @override
  final List<OrderModel> ordersList;

  @override
  String toString() {
    return 'OrdersState.loadOrdersSuccess(ordersList: $ordersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrdersSuccess &&
            (identical(other.ordersList, ordersList) ||
                const DeepCollectionEquality()
                    .equals(other.ordersList, ordersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ordersList);

  @JsonKey(ignore: true)
  @override
  _$LoadOrdersSuccessCopyWith<_LoadOrdersSuccess> get copyWith =>
      __$LoadOrdersSuccessCopyWithImpl<_LoadOrdersSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrdersLoading(),
    @required TResult loadOrdersSuccess(List<OrderModel> ordersList),
    @required TResult loadOrdersFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersSuccess(ordersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrdersLoading(),
    TResult loadOrdersSuccess(List<OrderModel> ordersList),
    TResult loadOrdersFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersSuccess != null) {
      return loadOrdersSuccess(ordersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrdersLoading(_LoadOrdersLoading value),
    @required TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    @required TResult loadOrdersFailed(_LoadOrdersFailed value),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrdersLoading(_LoadOrdersLoading value),
    TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    TResult loadOrdersFailed(_LoadOrdersFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersSuccess != null) {
      return loadOrdersSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadOrdersSuccess implements OrdersState {
  const factory _LoadOrdersSuccess(List<OrderModel> ordersList) =
      _$_LoadOrdersSuccess;

  List<OrderModel> get ordersList;
  @JsonKey(ignore: true)
  _$LoadOrdersSuccessCopyWith<_LoadOrdersSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadOrdersFailedCopyWith<$Res> {
  factory _$LoadOrdersFailedCopyWith(
          _LoadOrdersFailed value, $Res Function(_LoadOrdersFailed) then) =
      __$LoadOrdersFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadOrdersFailedCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res>
    implements _$LoadOrdersFailedCopyWith<$Res> {
  __$LoadOrdersFailedCopyWithImpl(
      _LoadOrdersFailed _value, $Res Function(_LoadOrdersFailed) _then)
      : super(_value, (v) => _then(v as _LoadOrdersFailed));

  @override
  _LoadOrdersFailed get _value => super._value as _LoadOrdersFailed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_LoadOrdersFailed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_LoadOrdersFailed implements _LoadOrdersFailed {
  const _$_LoadOrdersFailed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'OrdersState.loadOrdersFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrdersFailed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadOrdersFailedCopyWith<_LoadOrdersFailed> get copyWith =>
      __$LoadOrdersFailedCopyWithImpl<_LoadOrdersFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrdersLoading(),
    @required TResult loadOrdersSuccess(List<OrderModel> ordersList),
    @required TResult loadOrdersFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrdersLoading(),
    TResult loadOrdersSuccess(List<OrderModel> ordersList),
    TResult loadOrdersFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersFailed != null) {
      return loadOrdersFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrdersLoading(_LoadOrdersLoading value),
    @required TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    @required TResult loadOrdersFailed(_LoadOrdersFailed value),
  }) {
    assert(initial != null);
    assert(loadOrdersLoading != null);
    assert(loadOrdersSuccess != null);
    assert(loadOrdersFailed != null);
    return loadOrdersFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrdersLoading(_LoadOrdersLoading value),
    TResult loadOrdersSuccess(_LoadOrdersSuccess value),
    TResult loadOrdersFailed(_LoadOrdersFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrdersFailed != null) {
      return loadOrdersFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadOrdersFailed implements OrdersState {
  const factory _LoadOrdersFailed(String message) = _$_LoadOrdersFailed;

  String get message;
  @JsonKey(ignore: true)
  _$LoadOrdersFailedCopyWith<_LoadOrdersFailed> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'order_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrderdetailblocEventTearOff {
  const _$OrderdetailblocEventTearOff();

// ignore: unused_element
  _LoadOrderDetail loadOrderDetail(String orderId) {
    return _LoadOrderDetail(
      orderId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderdetailblocEvent = _$OrderdetailblocEventTearOff();

/// @nodoc
mixin _$OrderdetailblocEvent {
  String get orderId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadOrderDetail(String orderId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadOrderDetail(String orderId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadOrderDetail(_LoadOrderDetail value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadOrderDetail(_LoadOrderDetail value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $OrderdetailblocEventCopyWith<OrderdetailblocEvent> get copyWith;
}

/// @nodoc
abstract class $OrderdetailblocEventCopyWith<$Res> {
  factory $OrderdetailblocEventCopyWith(OrderdetailblocEvent value,
          $Res Function(OrderdetailblocEvent) then) =
      _$OrderdetailblocEventCopyWithImpl<$Res>;
  $Res call({String orderId});
}

/// @nodoc
class _$OrderdetailblocEventCopyWithImpl<$Res>
    implements $OrderdetailblocEventCopyWith<$Res> {
  _$OrderdetailblocEventCopyWithImpl(this._value, this._then);

  final OrderdetailblocEvent _value;
  // ignore: unused_field
  final $Res Function(OrderdetailblocEvent) _then;

  @override
  $Res call({
    Object orderId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed ? _value.orderId : orderId as String,
    ));
  }
}

/// @nodoc
abstract class _$LoadOrderDetailCopyWith<$Res>
    implements $OrderdetailblocEventCopyWith<$Res> {
  factory _$LoadOrderDetailCopyWith(
          _LoadOrderDetail value, $Res Function(_LoadOrderDetail) then) =
      __$LoadOrderDetailCopyWithImpl<$Res>;
  @override
  $Res call({String orderId});
}

/// @nodoc
class __$LoadOrderDetailCopyWithImpl<$Res>
    extends _$OrderdetailblocEventCopyWithImpl<$Res>
    implements _$LoadOrderDetailCopyWith<$Res> {
  __$LoadOrderDetailCopyWithImpl(
      _LoadOrderDetail _value, $Res Function(_LoadOrderDetail) _then)
      : super(_value, (v) => _then(v as _LoadOrderDetail));

  @override
  _LoadOrderDetail get _value => super._value as _LoadOrderDetail;

  @override
  $Res call({
    Object orderId = freezed,
  }) {
    return _then(_LoadOrderDetail(
      orderId == freezed ? _value.orderId : orderId as String,
    ));
  }
}

/// @nodoc
class _$_LoadOrderDetail implements _LoadOrderDetail {
  const _$_LoadOrderDetail(this.orderId) : assert(orderId != null);

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderdetailblocEvent.loadOrderDetail(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrderDetail &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderId);

  @JsonKey(ignore: true)
  @override
  _$LoadOrderDetailCopyWith<_LoadOrderDetail> get copyWith =>
      __$LoadOrderDetailCopyWithImpl<_LoadOrderDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadOrderDetail(String orderId),
  }) {
    assert(loadOrderDetail != null);
    return loadOrderDetail(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadOrderDetail(String orderId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetail != null) {
      return loadOrderDetail(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadOrderDetail(_LoadOrderDetail value),
  }) {
    assert(loadOrderDetail != null);
    return loadOrderDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadOrderDetail(_LoadOrderDetail value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetail != null) {
      return loadOrderDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderDetail implements OrderdetailblocEvent {
  const factory _LoadOrderDetail(String orderId) = _$_LoadOrderDetail;

  @override
  String get orderId;
  @override
  @JsonKey(ignore: true)
  _$LoadOrderDetailCopyWith<_LoadOrderDetail> get copyWith;
}

/// @nodoc
class _$OrderdetailblocStateTearOff {
  const _$OrderdetailblocStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadOrderDetailLoading loadOrderDetailLoading() {
    return const _LoadOrderDetailLoading();
  }

// ignore: unused_element
  _LoadOrderDetailOnProgressSuccess loadOrderDetailOnProgressSuccess(
      OrderModel order) {
    return _LoadOrderDetailOnProgressSuccess(
      order,
    );
  }

// ignore: unused_element
  _LoadOrderDetailDeliveredSuccess loadOrderDetailDeliveredSuccess(
      OrderModel order) {
    return _LoadOrderDetailDeliveredSuccess(
      order,
    );
  }

// ignore: unused_element
  _LoadOrderDetailFailed loadOrderDetailFailed(String message) {
    return _LoadOrderDetailFailed(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderdetailblocState = _$OrderdetailblocStateTearOff();

/// @nodoc
mixin _$OrderdetailblocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OrderdetailblocStateCopyWith<$Res> {
  factory $OrderdetailblocStateCopyWith(OrderdetailblocState value,
          $Res Function(OrderdetailblocState) then) =
      _$OrderdetailblocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderdetailblocStateCopyWithImpl<$Res>
    implements $OrderdetailblocStateCopyWith<$Res> {
  _$OrderdetailblocStateCopyWithImpl(this._value, this._then);

  final OrderdetailblocState _value;
  // ignore: unused_field
  final $Res Function(OrderdetailblocState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$OrderdetailblocStateCopyWithImpl<$Res>
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
    return 'OrderdetailblocState.initial()';
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
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
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
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderdetailblocState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadOrderDetailLoadingCopyWith<$Res> {
  factory _$LoadOrderDetailLoadingCopyWith(_LoadOrderDetailLoading value,
          $Res Function(_LoadOrderDetailLoading) then) =
      __$LoadOrderDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadOrderDetailLoadingCopyWithImpl<$Res>
    extends _$OrderdetailblocStateCopyWithImpl<$Res>
    implements _$LoadOrderDetailLoadingCopyWith<$Res> {
  __$LoadOrderDetailLoadingCopyWithImpl(_LoadOrderDetailLoading _value,
      $Res Function(_LoadOrderDetailLoading) _then)
      : super(_value, (v) => _then(v as _LoadOrderDetailLoading));

  @override
  _LoadOrderDetailLoading get _value => super._value as _LoadOrderDetailLoading;
}

/// @nodoc
class _$_LoadOrderDetailLoading implements _LoadOrderDetailLoading {
  const _$_LoadOrderDetailLoading();

  @override
  String toString() {
    return 'OrderdetailblocState.loadOrderDetailLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadOrderDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailLoading != null) {
      return loadOrderDetailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailLoading != null) {
      return loadOrderDetailLoading(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderDetailLoading implements OrderdetailblocState {
  const factory _LoadOrderDetailLoading() = _$_LoadOrderDetailLoading;
}

/// @nodoc
abstract class _$LoadOrderDetailOnProgressSuccessCopyWith<$Res> {
  factory _$LoadOrderDetailOnProgressSuccessCopyWith(
          _LoadOrderDetailOnProgressSuccess value,
          $Res Function(_LoadOrderDetailOnProgressSuccess) then) =
      __$LoadOrderDetailOnProgressSuccessCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class __$LoadOrderDetailOnProgressSuccessCopyWithImpl<$Res>
    extends _$OrderdetailblocStateCopyWithImpl<$Res>
    implements _$LoadOrderDetailOnProgressSuccessCopyWith<$Res> {
  __$LoadOrderDetailOnProgressSuccessCopyWithImpl(
      _LoadOrderDetailOnProgressSuccess _value,
      $Res Function(_LoadOrderDetailOnProgressSuccess) _then)
      : super(_value, (v) => _then(v as _LoadOrderDetailOnProgressSuccess));

  @override
  _LoadOrderDetailOnProgressSuccess get _value =>
      super._value as _LoadOrderDetailOnProgressSuccess;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_LoadOrderDetailOnProgressSuccess(
      order == freezed ? _value.order : order as OrderModel,
    ));
  }
}

/// @nodoc
class _$_LoadOrderDetailOnProgressSuccess
    implements _LoadOrderDetailOnProgressSuccess {
  const _$_LoadOrderDetailOnProgressSuccess(this.order) : assert(order != null);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderdetailblocState.loadOrderDetailOnProgressSuccess(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrderDetailOnProgressSuccess &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$LoadOrderDetailOnProgressSuccessCopyWith<_LoadOrderDetailOnProgressSuccess>
      get copyWith => __$LoadOrderDetailOnProgressSuccessCopyWithImpl<
          _LoadOrderDetailOnProgressSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailOnProgressSuccess(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailOnProgressSuccess != null) {
      return loadOrderDetailOnProgressSuccess(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailOnProgressSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailOnProgressSuccess != null) {
      return loadOrderDetailOnProgressSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderDetailOnProgressSuccess
    implements OrderdetailblocState {
  const factory _LoadOrderDetailOnProgressSuccess(OrderModel order) =
      _$_LoadOrderDetailOnProgressSuccess;

  OrderModel get order;
  @JsonKey(ignore: true)
  _$LoadOrderDetailOnProgressSuccessCopyWith<_LoadOrderDetailOnProgressSuccess>
      get copyWith;
}

/// @nodoc
abstract class _$LoadOrderDetailDeliveredSuccessCopyWith<$Res> {
  factory _$LoadOrderDetailDeliveredSuccessCopyWith(
          _LoadOrderDetailDeliveredSuccess value,
          $Res Function(_LoadOrderDetailDeliveredSuccess) then) =
      __$LoadOrderDetailDeliveredSuccessCopyWithImpl<$Res>;
  $Res call({OrderModel order});
}

/// @nodoc
class __$LoadOrderDetailDeliveredSuccessCopyWithImpl<$Res>
    extends _$OrderdetailblocStateCopyWithImpl<$Res>
    implements _$LoadOrderDetailDeliveredSuccessCopyWith<$Res> {
  __$LoadOrderDetailDeliveredSuccessCopyWithImpl(
      _LoadOrderDetailDeliveredSuccess _value,
      $Res Function(_LoadOrderDetailDeliveredSuccess) _then)
      : super(_value, (v) => _then(v as _LoadOrderDetailDeliveredSuccess));

  @override
  _LoadOrderDetailDeliveredSuccess get _value =>
      super._value as _LoadOrderDetailDeliveredSuccess;

  @override
  $Res call({
    Object order = freezed,
  }) {
    return _then(_LoadOrderDetailDeliveredSuccess(
      order == freezed ? _value.order : order as OrderModel,
    ));
  }
}

/// @nodoc
class _$_LoadOrderDetailDeliveredSuccess
    implements _LoadOrderDetailDeliveredSuccess {
  const _$_LoadOrderDetailDeliveredSuccess(this.order) : assert(order != null);

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderdetailblocState.loadOrderDetailDeliveredSuccess(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrderDetailDeliveredSuccess &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$LoadOrderDetailDeliveredSuccessCopyWith<_LoadOrderDetailDeliveredSuccess>
      get copyWith => __$LoadOrderDetailDeliveredSuccessCopyWithImpl<
          _LoadOrderDetailDeliveredSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailDeliveredSuccess(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailDeliveredSuccess != null) {
      return loadOrderDetailDeliveredSuccess(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailDeliveredSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailDeliveredSuccess != null) {
      return loadOrderDetailDeliveredSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderDetailDeliveredSuccess
    implements OrderdetailblocState {
  const factory _LoadOrderDetailDeliveredSuccess(OrderModel order) =
      _$_LoadOrderDetailDeliveredSuccess;

  OrderModel get order;
  @JsonKey(ignore: true)
  _$LoadOrderDetailDeliveredSuccessCopyWith<_LoadOrderDetailDeliveredSuccess>
      get copyWith;
}

/// @nodoc
abstract class _$LoadOrderDetailFailedCopyWith<$Res> {
  factory _$LoadOrderDetailFailedCopyWith(_LoadOrderDetailFailed value,
          $Res Function(_LoadOrderDetailFailed) then) =
      __$LoadOrderDetailFailedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadOrderDetailFailedCopyWithImpl<$Res>
    extends _$OrderdetailblocStateCopyWithImpl<$Res>
    implements _$LoadOrderDetailFailedCopyWith<$Res> {
  __$LoadOrderDetailFailedCopyWithImpl(_LoadOrderDetailFailed _value,
      $Res Function(_LoadOrderDetailFailed) _then)
      : super(_value, (v) => _then(v as _LoadOrderDetailFailed));

  @override
  _LoadOrderDetailFailed get _value => super._value as _LoadOrderDetailFailed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_LoadOrderDetailFailed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_LoadOrderDetailFailed implements _LoadOrderDetailFailed {
  const _$_LoadOrderDetailFailed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderdetailblocState.loadOrderDetailFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOrderDetailFailed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadOrderDetailFailedCopyWith<_LoadOrderDetailFailed> get copyWith =>
      __$LoadOrderDetailFailedCopyWithImpl<_LoadOrderDetailFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadOrderDetailLoading(),
    @required TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    @required TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    @required TResult loadOrderDetailFailed(String message),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadOrderDetailLoading(),
    TResult loadOrderDetailOnProgressSuccess(OrderModel order),
    TResult loadOrderDetailDeliveredSuccess(OrderModel order),
    TResult loadOrderDetailFailed(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailFailed != null) {
      return loadOrderDetailFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    @required
        TResult loadOrderDetailOnProgressSuccess(
            _LoadOrderDetailOnProgressSuccess value),
    @required
        TResult loadOrderDetailDeliveredSuccess(
            _LoadOrderDetailDeliveredSuccess value),
    @required TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
  }) {
    assert(initial != null);
    assert(loadOrderDetailLoading != null);
    assert(loadOrderDetailOnProgressSuccess != null);
    assert(loadOrderDetailDeliveredSuccess != null);
    assert(loadOrderDetailFailed != null);
    return loadOrderDetailFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadOrderDetailLoading(_LoadOrderDetailLoading value),
    TResult loadOrderDetailOnProgressSuccess(
        _LoadOrderDetailOnProgressSuccess value),
    TResult loadOrderDetailDeliveredSuccess(
        _LoadOrderDetailDeliveredSuccess value),
    TResult loadOrderDetailFailed(_LoadOrderDetailFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadOrderDetailFailed != null) {
      return loadOrderDetailFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadOrderDetailFailed implements OrderdetailblocState {
  const factory _LoadOrderDetailFailed(String message) =
      _$_LoadOrderDetailFailed;

  String get message;
  @JsonKey(ignore: true)
  _$LoadOrderDetailFailedCopyWith<_LoadOrderDetailFailed> get copyWith;
}

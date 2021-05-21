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
  _Started started(Map<String, dynamic> event_data) {
    return _Started(
      event_data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  Map<String, dynamic> get event_data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Map<String, dynamic> event_data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Map<String, dynamic> event_data),
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
  $OrdersEventCopyWith<OrdersEvent> get copyWith;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> event_data});
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;

  @override
  $Res call({
    Object event_data = freezed,
  }) {
    return _then(_value.copyWith(
      event_data: event_data == freezed
          ? _value.event_data
          : event_data as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> event_data});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object event_data = freezed,
  }) {
    return _then(_Started(
      event_data == freezed
          ? _value.event_data
          : event_data as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.event_data) : assert(event_data != null);

  @override
  final Map<String, dynamic> event_data;

  @override
  String toString() {
    return 'OrdersEvent.started(event_data: $event_data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.event_data, event_data) ||
                const DeepCollectionEquality()
                    .equals(other.event_data, event_data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(event_data);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Map<String, dynamic> event_data),
  }) {
    assert(started != null);
    return started(event_data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Map<String, dynamic> event_data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(event_data);
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

abstract class _Started implements OrdersEvent {
  const factory _Started(Map<String, dynamic> event_data) = _$_Started;

  @override
  Map<String, dynamic> get event_data;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$OrdersStateTearOff {
  const _$OrdersStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<OrderModel> ordersList) {
    return _Success(
      ordersList,
    );
  }

// ignore: unused_element
  _Failed failed() {
    return const _Failed();
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
    @required TResult loading(),
    @required TResult success(List<OrderModel> ordersList),
    @required TResult failed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<OrderModel> ordersList),
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
    @required TResult loading(),
    @required TResult success(List<OrderModel> ordersList),
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
    TResult success(List<OrderModel> ordersList),
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

abstract class _Initial implements OrdersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
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
    return 'OrdersState.loading()';
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
    @required TResult success(List<OrderModel> ordersList),
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
    TResult success(List<OrderModel> ordersList),
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

abstract class _Loading implements OrdersState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<OrderModel> ordersList});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object ordersList = freezed,
  }) {
    return _then(_Success(
      ordersList == freezed
          ? _value.ordersList
          : ordersList as List<OrderModel>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.ordersList) : assert(ordersList != null);

  @override
  final List<OrderModel> ordersList;

  @override
  String toString() {
    return 'OrdersState.success(ordersList: $ordersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.ordersList, ordersList) ||
                const DeepCollectionEquality()
                    .equals(other.ordersList, ordersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ordersList);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<OrderModel> ordersList),
    @required TResult failed(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(failed != null);
    return success(ordersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<OrderModel> ordersList),
    TResult failed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(ordersList);
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

abstract class _Success implements OrdersState {
  const factory _Success(List<OrderModel> ordersList) = _$_Success;

  List<OrderModel> get ordersList;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
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
    return 'OrdersState.failed()';
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
    @required TResult success(List<OrderModel> ordersList),
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
    TResult success(List<OrderModel> ordersList),
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

abstract class _Failed implements OrdersState {
  const factory _Failed() = _$_Failed;
}

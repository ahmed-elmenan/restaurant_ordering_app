// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'get_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetProductsEventTearOff {
  const _$GetProductsEventTearOff();

// ignore: unused_element
  _FetchProducts fetchProducts() {
    return const _FetchProducts();
  }
}

/// @nodoc
// ignore: unused_element
const $GetProductsEvent = _$GetProductsEventTearOff();

/// @nodoc
mixin _$GetProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchProducts(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchProducts(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchProducts(_FetchProducts value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchProducts(_FetchProducts value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GetProductsEventCopyWith<$Res> {
  factory $GetProductsEventCopyWith(
          GetProductsEvent value, $Res Function(GetProductsEvent) then) =
      _$GetProductsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsEventCopyWithImpl<$Res>
    implements $GetProductsEventCopyWith<$Res> {
  _$GetProductsEventCopyWithImpl(this._value, this._then);

  final GetProductsEvent _value;
  // ignore: unused_field
  final $Res Function(GetProductsEvent) _then;
}

/// @nodoc
abstract class _$FetchProductsCopyWith<$Res> {
  factory _$FetchProductsCopyWith(
          _FetchProducts value, $Res Function(_FetchProducts) then) =
      __$FetchProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchProductsCopyWithImpl<$Res>
    extends _$GetProductsEventCopyWithImpl<$Res>
    implements _$FetchProductsCopyWith<$Res> {
  __$FetchProductsCopyWithImpl(
      _FetchProducts _value, $Res Function(_FetchProducts) _then)
      : super(_value, (v) => _then(v as _FetchProducts));

  @override
  _FetchProducts get _value => super._value as _FetchProducts;
}

/// @nodoc
class _$_FetchProducts implements _FetchProducts {
  const _$_FetchProducts();

  @override
  String toString() {
    return 'GetProductsEvent.fetchProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchProducts(),
  }) {
    assert(fetchProducts != null);
    return fetchProducts();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchProducts(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchProducts != null) {
      return fetchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchProducts(_FetchProducts value),
  }) {
    assert(fetchProducts != null);
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchProducts(_FetchProducts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchProducts implements GetProductsEvent {
  const factory _FetchProducts() = _$_FetchProducts;
}

/// @nodoc
class _$GetProductsStateTearOff {
  const _$GetProductsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _GetProductsLoading getProductsLoading() {
    return const _GetProductsLoading();
  }

// ignore: unused_element
  _GetProductsSuccess getProductsSuccess(List<ProductModel> productList) {
    return _GetProductsSuccess(
      productList,
    );
  }

// ignore: unused_element
  _GetProductsFailed getProductsFailed() {
    return const _GetProductsFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $GetProductsState = _$GetProductsStateTearOff();

/// @nodoc
mixin _$GetProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getProductsLoading(),
    @required TResult getProductsSuccess(List<ProductModel> productList),
    @required TResult getProductsFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProductsLoading(),
    TResult getProductsSuccess(List<ProductModel> productList),
    TResult getProductsFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProductsLoading(_GetProductsLoading value),
    @required TResult getProductsSuccess(_GetProductsSuccess value),
    @required TResult getProductsFailed(_GetProductsFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProductsLoading(_GetProductsLoading value),
    TResult getProductsSuccess(_GetProductsSuccess value),
    TResult getProductsFailed(_GetProductsFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GetProductsStateCopyWith<$Res> {
  factory $GetProductsStateCopyWith(
          GetProductsState value, $Res Function(GetProductsState) then) =
      _$GetProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsStateCopyWithImpl<$Res>
    implements $GetProductsStateCopyWith<$Res> {
  _$GetProductsStateCopyWithImpl(this._value, this._then);

  final GetProductsState _value;
  // ignore: unused_field
  final $Res Function(GetProductsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GetProductsStateCopyWithImpl<$Res>
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
    return 'GetProductsState.initial()';
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
    @required TResult getProductsLoading(),
    @required TResult getProductsSuccess(List<ProductModel> productList),
    @required TResult getProductsFailed(),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProductsLoading(),
    TResult getProductsSuccess(List<ProductModel> productList),
    TResult getProductsFailed(),
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
    @required TResult getProductsLoading(_GetProductsLoading value),
    @required TResult getProductsSuccess(_GetProductsSuccess value),
    @required TResult getProductsFailed(_GetProductsFailed value),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProductsLoading(_GetProductsLoading value),
    TResult getProductsSuccess(_GetProductsSuccess value),
    TResult getProductsFailed(_GetProductsFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetProductsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GetProductsLoadingCopyWith<$Res> {
  factory _$GetProductsLoadingCopyWith(
          _GetProductsLoading value, $Res Function(_GetProductsLoading) then) =
      __$GetProductsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductsLoadingCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
    implements _$GetProductsLoadingCopyWith<$Res> {
  __$GetProductsLoadingCopyWithImpl(
      _GetProductsLoading _value, $Res Function(_GetProductsLoading) _then)
      : super(_value, (v) => _then(v as _GetProductsLoading));

  @override
  _GetProductsLoading get _value => super._value as _GetProductsLoading;
}

/// @nodoc
class _$_GetProductsLoading implements _GetProductsLoading {
  const _$_GetProductsLoading();

  @override
  String toString() {
    return 'GetProductsState.getProductsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getProductsLoading(),
    @required TResult getProductsSuccess(List<ProductModel> productList),
    @required TResult getProductsFailed(),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProductsLoading(),
    TResult getProductsSuccess(List<ProductModel> productList),
    TResult getProductsFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsLoading != null) {
      return getProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProductsLoading(_GetProductsLoading value),
    @required TResult getProductsSuccess(_GetProductsSuccess value),
    @required TResult getProductsFailed(_GetProductsFailed value),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProductsLoading(_GetProductsLoading value),
    TResult getProductsSuccess(_GetProductsSuccess value),
    TResult getProductsFailed(_GetProductsFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsLoading != null) {
      return getProductsLoading(this);
    }
    return orElse();
  }
}

abstract class _GetProductsLoading implements GetProductsState {
  const factory _GetProductsLoading() = _$_GetProductsLoading;
}

/// @nodoc
abstract class _$GetProductsSuccessCopyWith<$Res> {
  factory _$GetProductsSuccessCopyWith(
          _GetProductsSuccess value, $Res Function(_GetProductsSuccess) then) =
      __$GetProductsSuccessCopyWithImpl<$Res>;
  $Res call({List<ProductModel> productList});
}

/// @nodoc
class __$GetProductsSuccessCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
    implements _$GetProductsSuccessCopyWith<$Res> {
  __$GetProductsSuccessCopyWithImpl(
      _GetProductsSuccess _value, $Res Function(_GetProductsSuccess) _then)
      : super(_value, (v) => _then(v as _GetProductsSuccess));

  @override
  _GetProductsSuccess get _value => super._value as _GetProductsSuccess;

  @override
  $Res call({
    Object productList = freezed,
  }) {
    return _then(_GetProductsSuccess(
      productList == freezed
          ? _value.productList
          : productList as List<ProductModel>,
    ));
  }
}

/// @nodoc
class _$_GetProductsSuccess implements _GetProductsSuccess {
  const _$_GetProductsSuccess(this.productList) : assert(productList != null);

  @override
  final List<ProductModel> productList;

  @override
  String toString() {
    return 'GetProductsState.getProductsSuccess(productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetProductsSuccess &&
            (identical(other.productList, productList) ||
                const DeepCollectionEquality()
                    .equals(other.productList, productList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productList);

  @JsonKey(ignore: true)
  @override
  _$GetProductsSuccessCopyWith<_GetProductsSuccess> get copyWith =>
      __$GetProductsSuccessCopyWithImpl<_GetProductsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getProductsLoading(),
    @required TResult getProductsSuccess(List<ProductModel> productList),
    @required TResult getProductsFailed(),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsSuccess(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProductsLoading(),
    TResult getProductsSuccess(List<ProductModel> productList),
    TResult getProductsFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsSuccess != null) {
      return getProductsSuccess(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProductsLoading(_GetProductsLoading value),
    @required TResult getProductsSuccess(_GetProductsSuccess value),
    @required TResult getProductsFailed(_GetProductsFailed value),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProductsLoading(_GetProductsLoading value),
    TResult getProductsSuccess(_GetProductsSuccess value),
    TResult getProductsFailed(_GetProductsFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsSuccess != null) {
      return getProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetProductsSuccess implements GetProductsState {
  const factory _GetProductsSuccess(List<ProductModel> productList) =
      _$_GetProductsSuccess;

  List<ProductModel> get productList;
  @JsonKey(ignore: true)
  _$GetProductsSuccessCopyWith<_GetProductsSuccess> get copyWith;
}

/// @nodoc
abstract class _$GetProductsFailedCopyWith<$Res> {
  factory _$GetProductsFailedCopyWith(
          _GetProductsFailed value, $Res Function(_GetProductsFailed) then) =
      __$GetProductsFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductsFailedCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res>
    implements _$GetProductsFailedCopyWith<$Res> {
  __$GetProductsFailedCopyWithImpl(
      _GetProductsFailed _value, $Res Function(_GetProductsFailed) _then)
      : super(_value, (v) => _then(v as _GetProductsFailed));

  @override
  _GetProductsFailed get _value => super._value as _GetProductsFailed;
}

/// @nodoc
class _$_GetProductsFailed implements _GetProductsFailed {
  const _$_GetProductsFailed();

  @override
  String toString() {
    return 'GetProductsState.getProductsFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProductsFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult getProductsLoading(),
    @required TResult getProductsSuccess(List<ProductModel> productList),
    @required TResult getProductsFailed(),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getProductsLoading(),
    TResult getProductsSuccess(List<ProductModel> productList),
    TResult getProductsFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsFailed != null) {
      return getProductsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult getProductsLoading(_GetProductsLoading value),
    @required TResult getProductsSuccess(_GetProductsSuccess value),
    @required TResult getProductsFailed(_GetProductsFailed value),
  }) {
    assert(initial != null);
    assert(getProductsLoading != null);
    assert(getProductsSuccess != null);
    assert(getProductsFailed != null);
    return getProductsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult getProductsLoading(_GetProductsLoading value),
    TResult getProductsSuccess(_GetProductsSuccess value),
    TResult getProductsFailed(_GetProductsFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getProductsFailed != null) {
      return getProductsFailed(this);
    }
    return orElse();
  }
}

abstract class _GetProductsFailed implements GetProductsState {
  const factory _GetProductsFailed() = _$_GetProductsFailed;
}

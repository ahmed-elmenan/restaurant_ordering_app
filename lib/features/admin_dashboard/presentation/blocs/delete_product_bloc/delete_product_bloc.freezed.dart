// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'delete_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeleteProductEventTearOff {
  const _$DeleteProductEventTearOff();

// ignore: unused_element
  _DeleteProductSwiped deleteProductSwiped(String productId) {
    return _DeleteProductSwiped(
      productId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteProductEvent = _$DeleteProductEventTearOff();

/// @nodoc
mixin _$DeleteProductEvent {
  String get productId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteProductSwiped(String productId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteProductSwiped(String productId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteProductSwiped(_DeleteProductSwiped value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteProductSwiped(_DeleteProductSwiped value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $DeleteProductEventCopyWith<DeleteProductEvent> get copyWith;
}

/// @nodoc
abstract class $DeleteProductEventCopyWith<$Res> {
  factory $DeleteProductEventCopyWith(
          DeleteProductEvent value, $Res Function(DeleteProductEvent) then) =
      _$DeleteProductEventCopyWithImpl<$Res>;
  $Res call({String productId});
}

/// @nodoc
class _$DeleteProductEventCopyWithImpl<$Res>
    implements $DeleteProductEventCopyWith<$Res> {
  _$DeleteProductEventCopyWithImpl(this._value, this._then);

  final DeleteProductEvent _value;
  // ignore: unused_field
  final $Res Function(DeleteProductEvent) _then;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed ? _value.productId : productId as String,
    ));
  }
}

/// @nodoc
abstract class _$DeleteProductSwipedCopyWith<$Res>
    implements $DeleteProductEventCopyWith<$Res> {
  factory _$DeleteProductSwipedCopyWith(_DeleteProductSwiped value,
          $Res Function(_DeleteProductSwiped) then) =
      __$DeleteProductSwipedCopyWithImpl<$Res>;
  @override
  $Res call({String productId});
}

/// @nodoc
class __$DeleteProductSwipedCopyWithImpl<$Res>
    extends _$DeleteProductEventCopyWithImpl<$Res>
    implements _$DeleteProductSwipedCopyWith<$Res> {
  __$DeleteProductSwipedCopyWithImpl(
      _DeleteProductSwiped _value, $Res Function(_DeleteProductSwiped) _then)
      : super(_value, (v) => _then(v as _DeleteProductSwiped));

  @override
  _DeleteProductSwiped get _value => super._value as _DeleteProductSwiped;

  @override
  $Res call({
    Object productId = freezed,
  }) {
    return _then(_DeleteProductSwiped(
      productId == freezed ? _value.productId : productId as String,
    ));
  }
}

/// @nodoc
class _$_DeleteProductSwiped implements _DeleteProductSwiped {
  const _$_DeleteProductSwiped(this.productId) : assert(productId != null);

  @override
  final String productId;

  @override
  String toString() {
    return 'DeleteProductEvent.deleteProductSwiped(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProductSwiped &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productId);

  @JsonKey(ignore: true)
  @override
  _$DeleteProductSwipedCopyWith<_DeleteProductSwiped> get copyWith =>
      __$DeleteProductSwipedCopyWithImpl<_DeleteProductSwiped>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteProductSwiped(String productId),
  }) {
    assert(deleteProductSwiped != null);
    return deleteProductSwiped(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteProductSwiped(String productId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductSwiped != null) {
      return deleteProductSwiped(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteProductSwiped(_DeleteProductSwiped value),
  }) {
    assert(deleteProductSwiped != null);
    return deleteProductSwiped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteProductSwiped(_DeleteProductSwiped value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductSwiped != null) {
      return deleteProductSwiped(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductSwiped implements DeleteProductEvent {
  const factory _DeleteProductSwiped(String productId) = _$_DeleteProductSwiped;

  @override
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$DeleteProductSwipedCopyWith<_DeleteProductSwiped> get copyWith;
}

/// @nodoc
class _$DeleteProductStateTearOff {
  const _$DeleteProductStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _DeleteProductLoading deleteProductLoading() {
    return const _DeleteProductLoading();
  }

// ignore: unused_element
  _DeleteProductSuccess deleteProductSuccess() {
    return const _DeleteProductSuccess();
  }

// ignore: unused_element
  _DeleteProductFailed deleteProductFailed() {
    return const _DeleteProductFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $DeleteProductState = _$DeleteProductStateTearOff();

/// @nodoc
mixin _$DeleteProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult deleteProductLoading(),
    @required TResult deleteProductSuccess(),
    @required TResult deleteProductFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult deleteProductLoading(),
    TResult deleteProductSuccess(),
    TResult deleteProductFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult deleteProductLoading(_DeleteProductLoading value),
    @required TResult deleteProductSuccess(_DeleteProductSuccess value),
    @required TResult deleteProductFailed(_DeleteProductFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult deleteProductLoading(_DeleteProductLoading value),
    TResult deleteProductSuccess(_DeleteProductSuccess value),
    TResult deleteProductFailed(_DeleteProductFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DeleteProductStateCopyWith<$Res> {
  factory $DeleteProductStateCopyWith(
          DeleteProductState value, $Res Function(DeleteProductState) then) =
      _$DeleteProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteProductStateCopyWithImpl<$Res>
    implements $DeleteProductStateCopyWith<$Res> {
  _$DeleteProductStateCopyWithImpl(this._value, this._then);

  final DeleteProductState _value;
  // ignore: unused_field
  final $Res Function(DeleteProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DeleteProductStateCopyWithImpl<$Res>
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
    return 'DeleteProductState.initial()';
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
    @required TResult deleteProductLoading(),
    @required TResult deleteProductSuccess(),
    @required TResult deleteProductFailed(),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult deleteProductLoading(),
    TResult deleteProductSuccess(),
    TResult deleteProductFailed(),
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
    @required TResult deleteProductLoading(_DeleteProductLoading value),
    @required TResult deleteProductSuccess(_DeleteProductSuccess value),
    @required TResult deleteProductFailed(_DeleteProductFailed value),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult deleteProductLoading(_DeleteProductLoading value),
    TResult deleteProductSuccess(_DeleteProductSuccess value),
    TResult deleteProductFailed(_DeleteProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DeleteProductLoadingCopyWith<$Res> {
  factory _$DeleteProductLoadingCopyWith(_DeleteProductLoading value,
          $Res Function(_DeleteProductLoading) then) =
      __$DeleteProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteProductLoadingCopyWithImpl<$Res>
    extends _$DeleteProductStateCopyWithImpl<$Res>
    implements _$DeleteProductLoadingCopyWith<$Res> {
  __$DeleteProductLoadingCopyWithImpl(
      _DeleteProductLoading _value, $Res Function(_DeleteProductLoading) _then)
      : super(_value, (v) => _then(v as _DeleteProductLoading));

  @override
  _DeleteProductLoading get _value => super._value as _DeleteProductLoading;
}

/// @nodoc
class _$_DeleteProductLoading implements _DeleteProductLoading {
  const _$_DeleteProductLoading();

  @override
  String toString() {
    return 'DeleteProductState.deleteProductLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult deleteProductLoading(),
    @required TResult deleteProductSuccess(),
    @required TResult deleteProductFailed(),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult deleteProductLoading(),
    TResult deleteProductSuccess(),
    TResult deleteProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductLoading != null) {
      return deleteProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult deleteProductLoading(_DeleteProductLoading value),
    @required TResult deleteProductSuccess(_DeleteProductSuccess value),
    @required TResult deleteProductFailed(_DeleteProductFailed value),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult deleteProductLoading(_DeleteProductLoading value),
    TResult deleteProductSuccess(_DeleteProductSuccess value),
    TResult deleteProductFailed(_DeleteProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductLoading != null) {
      return deleteProductLoading(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductLoading implements DeleteProductState {
  const factory _DeleteProductLoading() = _$_DeleteProductLoading;
}

/// @nodoc
abstract class _$DeleteProductSuccessCopyWith<$Res> {
  factory _$DeleteProductSuccessCopyWith(_DeleteProductSuccess value,
          $Res Function(_DeleteProductSuccess) then) =
      __$DeleteProductSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteProductSuccessCopyWithImpl<$Res>
    extends _$DeleteProductStateCopyWithImpl<$Res>
    implements _$DeleteProductSuccessCopyWith<$Res> {
  __$DeleteProductSuccessCopyWithImpl(
      _DeleteProductSuccess _value, $Res Function(_DeleteProductSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteProductSuccess));

  @override
  _DeleteProductSuccess get _value => super._value as _DeleteProductSuccess;
}

/// @nodoc
class _$_DeleteProductSuccess implements _DeleteProductSuccess {
  const _$_DeleteProductSuccess();

  @override
  String toString() {
    return 'DeleteProductState.deleteProductSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult deleteProductLoading(),
    @required TResult deleteProductSuccess(),
    @required TResult deleteProductFailed(),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult deleteProductLoading(),
    TResult deleteProductSuccess(),
    TResult deleteProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductSuccess != null) {
      return deleteProductSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult deleteProductLoading(_DeleteProductLoading value),
    @required TResult deleteProductSuccess(_DeleteProductSuccess value),
    @required TResult deleteProductFailed(_DeleteProductFailed value),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult deleteProductLoading(_DeleteProductLoading value),
    TResult deleteProductSuccess(_DeleteProductSuccess value),
    TResult deleteProductFailed(_DeleteProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductSuccess != null) {
      return deleteProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductSuccess implements DeleteProductState {
  const factory _DeleteProductSuccess() = _$_DeleteProductSuccess;
}

/// @nodoc
abstract class _$DeleteProductFailedCopyWith<$Res> {
  factory _$DeleteProductFailedCopyWith(_DeleteProductFailed value,
          $Res Function(_DeleteProductFailed) then) =
      __$DeleteProductFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteProductFailedCopyWithImpl<$Res>
    extends _$DeleteProductStateCopyWithImpl<$Res>
    implements _$DeleteProductFailedCopyWith<$Res> {
  __$DeleteProductFailedCopyWithImpl(
      _DeleteProductFailed _value, $Res Function(_DeleteProductFailed) _then)
      : super(_value, (v) => _then(v as _DeleteProductFailed));

  @override
  _DeleteProductFailed get _value => super._value as _DeleteProductFailed;
}

/// @nodoc
class _$_DeleteProductFailed implements _DeleteProductFailed {
  const _$_DeleteProductFailed();

  @override
  String toString() {
    return 'DeleteProductState.deleteProductFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteProductFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult deleteProductLoading(),
    @required TResult deleteProductSuccess(),
    @required TResult deleteProductFailed(),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult deleteProductLoading(),
    TResult deleteProductSuccess(),
    TResult deleteProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductFailed != null) {
      return deleteProductFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult deleteProductLoading(_DeleteProductLoading value),
    @required TResult deleteProductSuccess(_DeleteProductSuccess value),
    @required TResult deleteProductFailed(_DeleteProductFailed value),
  }) {
    assert(initial != null);
    assert(deleteProductLoading != null);
    assert(deleteProductSuccess != null);
    assert(deleteProductFailed != null);
    return deleteProductFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult deleteProductLoading(_DeleteProductLoading value),
    TResult deleteProductSuccess(_DeleteProductSuccess value),
    TResult deleteProductFailed(_DeleteProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteProductFailed != null) {
      return deleteProductFailed(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductFailed implements DeleteProductState {
  const factory _DeleteProductFailed() = _$_DeleteProductFailed;
}

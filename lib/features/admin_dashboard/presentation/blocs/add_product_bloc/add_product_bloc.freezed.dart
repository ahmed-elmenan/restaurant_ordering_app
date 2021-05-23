// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddProductEventTearOff {
  const _$AddProductEventTearOff();

// ignore: unused_element
  _AddProductButtonPressed addProductButtonPressed(
      ProductModel productModel, File image) {
    return _AddProductButtonPressed(
      productModel,
      image,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddProductEvent = _$AddProductEventTearOff();

/// @nodoc
mixin _$AddProductEvent {
  ProductModel get productModel;
  File get image;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addProductButtonPressed(ProductModel productModel, File image),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addProductButtonPressed(ProductModel productModel, File image),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addProductButtonPressed(_AddProductButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addProductButtonPressed(_AddProductButtonPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AddProductEventCopyWith<AddProductEvent> get copyWith;
}

/// @nodoc
abstract class $AddProductEventCopyWith<$Res> {
  factory $AddProductEventCopyWith(
          AddProductEvent value, $Res Function(AddProductEvent) then) =
      _$AddProductEventCopyWithImpl<$Res>;
  $Res call({ProductModel productModel, File image});
}

/// @nodoc
class _$AddProductEventCopyWithImpl<$Res>
    implements $AddProductEventCopyWith<$Res> {
  _$AddProductEventCopyWithImpl(this._value, this._then);

  final AddProductEvent _value;
  // ignore: unused_field
  final $Res Function(AddProductEvent) _then;

  @override
  $Res call({
    Object productModel = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel as ProductModel,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
abstract class _$AddProductButtonPressedCopyWith<$Res>
    implements $AddProductEventCopyWith<$Res> {
  factory _$AddProductButtonPressedCopyWith(_AddProductButtonPressed value,
          $Res Function(_AddProductButtonPressed) then) =
      __$AddProductButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel productModel, File image});
}

/// @nodoc
class __$AddProductButtonPressedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements _$AddProductButtonPressedCopyWith<$Res> {
  __$AddProductButtonPressedCopyWithImpl(_AddProductButtonPressed _value,
      $Res Function(_AddProductButtonPressed) _then)
      : super(_value, (v) => _then(v as _AddProductButtonPressed));

  @override
  _AddProductButtonPressed get _value =>
      super._value as _AddProductButtonPressed;

  @override
  $Res call({
    Object productModel = freezed,
    Object image = freezed,
  }) {
    return _then(_AddProductButtonPressed(
      productModel == freezed
          ? _value.productModel
          : productModel as ProductModel,
      image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$_AddProductButtonPressed implements _AddProductButtonPressed {
  const _$_AddProductButtonPressed(this.productModel, this.image)
      : assert(productModel != null),
        assert(image != null);

  @override
  final ProductModel productModel;
  @override
  final File image;

  @override
  String toString() {
    return 'AddProductEvent.addProductButtonPressed(productModel: $productModel, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProductButtonPressed &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productModel) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$AddProductButtonPressedCopyWith<_AddProductButtonPressed> get copyWith =>
      __$AddProductButtonPressedCopyWithImpl<_AddProductButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addProductButtonPressed(ProductModel productModel, File image),
  }) {
    assert(addProductButtonPressed != null);
    return addProductButtonPressed(productModel, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addProductButtonPressed(ProductModel productModel, File image),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductButtonPressed != null) {
      return addProductButtonPressed(productModel, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addProductButtonPressed(_AddProductButtonPressed value),
  }) {
    assert(addProductButtonPressed != null);
    return addProductButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addProductButtonPressed(_AddProductButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductButtonPressed != null) {
      return addProductButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddProductButtonPressed implements AddProductEvent {
  const factory _AddProductButtonPressed(
      ProductModel productModel, File image) = _$_AddProductButtonPressed;

  @override
  ProductModel get productModel;
  @override
  File get image;
  @override
  @JsonKey(ignore: true)
  _$AddProductButtonPressedCopyWith<_AddProductButtonPressed> get copyWith;
}

/// @nodoc
class _$AddProductStateTearOff {
  const _$AddProductStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AddProductLoading addProductLoading() {
    return const _AddProductLoading();
  }

// ignore: unused_element
  _AddProductSuccess addProductSuccess() {
    return const _AddProductSuccess();
  }

// ignore: unused_element
  _AddProductFailed addProductFailed() {
    return const _AddProductFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $AddProductState = _$AddProductStateTearOff();

/// @nodoc
mixin _$AddProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addProductLoading(),
    @required TResult addProductSuccess(),
    @required TResult addProductFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addProductLoading(),
    TResult addProductSuccess(),
    TResult addProductFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addProductLoading(_AddProductLoading value),
    @required TResult addProductSuccess(_AddProductSuccess value),
    @required TResult addProductFailed(_AddProductFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addProductLoading(_AddProductLoading value),
    TResult addProductSuccess(_AddProductSuccess value),
    TResult addProductFailed(_AddProductFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  final AddProductState _value;
  // ignore: unused_field
  final $Res Function(AddProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddProductStateCopyWithImpl<$Res>
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
    return 'AddProductState.initial()';
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
    @required TResult addProductLoading(),
    @required TResult addProductSuccess(),
    @required TResult addProductFailed(),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addProductLoading(),
    TResult addProductSuccess(),
    TResult addProductFailed(),
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
    @required TResult addProductLoading(_AddProductLoading value),
    @required TResult addProductSuccess(_AddProductSuccess value),
    @required TResult addProductFailed(_AddProductFailed value),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addProductLoading(_AddProductLoading value),
    TResult addProductSuccess(_AddProductSuccess value),
    TResult addProductFailed(_AddProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddProductLoadingCopyWith<$Res> {
  factory _$AddProductLoadingCopyWith(
          _AddProductLoading value, $Res Function(_AddProductLoading) then) =
      __$AddProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddProductLoadingCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res>
    implements _$AddProductLoadingCopyWith<$Res> {
  __$AddProductLoadingCopyWithImpl(
      _AddProductLoading _value, $Res Function(_AddProductLoading) _then)
      : super(_value, (v) => _then(v as _AddProductLoading));

  @override
  _AddProductLoading get _value => super._value as _AddProductLoading;
}

/// @nodoc
class _$_AddProductLoading implements _AddProductLoading {
  const _$_AddProductLoading();

  @override
  String toString() {
    return 'AddProductState.addProductLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addProductLoading(),
    @required TResult addProductSuccess(),
    @required TResult addProductFailed(),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addProductLoading(),
    TResult addProductSuccess(),
    TResult addProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductLoading != null) {
      return addProductLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addProductLoading(_AddProductLoading value),
    @required TResult addProductSuccess(_AddProductSuccess value),
    @required TResult addProductFailed(_AddProductFailed value),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addProductLoading(_AddProductLoading value),
    TResult addProductSuccess(_AddProductSuccess value),
    TResult addProductFailed(_AddProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductLoading != null) {
      return addProductLoading(this);
    }
    return orElse();
  }
}

abstract class _AddProductLoading implements AddProductState {
  const factory _AddProductLoading() = _$_AddProductLoading;
}

/// @nodoc
abstract class _$AddProductSuccessCopyWith<$Res> {
  factory _$AddProductSuccessCopyWith(
          _AddProductSuccess value, $Res Function(_AddProductSuccess) then) =
      __$AddProductSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddProductSuccessCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res>
    implements _$AddProductSuccessCopyWith<$Res> {
  __$AddProductSuccessCopyWithImpl(
      _AddProductSuccess _value, $Res Function(_AddProductSuccess) _then)
      : super(_value, (v) => _then(v as _AddProductSuccess));

  @override
  _AddProductSuccess get _value => super._value as _AddProductSuccess;
}

/// @nodoc
class _$_AddProductSuccess implements _AddProductSuccess {
  const _$_AddProductSuccess();

  @override
  String toString() {
    return 'AddProductState.addProductSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddProductSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addProductLoading(),
    @required TResult addProductSuccess(),
    @required TResult addProductFailed(),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addProductLoading(),
    TResult addProductSuccess(),
    TResult addProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductSuccess != null) {
      return addProductSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addProductLoading(_AddProductLoading value),
    @required TResult addProductSuccess(_AddProductSuccess value),
    @required TResult addProductFailed(_AddProductFailed value),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addProductLoading(_AddProductLoading value),
    TResult addProductSuccess(_AddProductSuccess value),
    TResult addProductFailed(_AddProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductSuccess != null) {
      return addProductSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddProductSuccess implements AddProductState {
  const factory _AddProductSuccess() = _$_AddProductSuccess;
}

/// @nodoc
abstract class _$AddProductFailedCopyWith<$Res> {
  factory _$AddProductFailedCopyWith(
          _AddProductFailed value, $Res Function(_AddProductFailed) then) =
      __$AddProductFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddProductFailedCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res>
    implements _$AddProductFailedCopyWith<$Res> {
  __$AddProductFailedCopyWithImpl(
      _AddProductFailed _value, $Res Function(_AddProductFailed) _then)
      : super(_value, (v) => _then(v as _AddProductFailed));

  @override
  _AddProductFailed get _value => super._value as _AddProductFailed;
}

/// @nodoc
class _$_AddProductFailed implements _AddProductFailed {
  const _$_AddProductFailed();

  @override
  String toString() {
    return 'AddProductState.addProductFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddProductFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult addProductLoading(),
    @required TResult addProductSuccess(),
    @required TResult addProductFailed(),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult addProductLoading(),
    TResult addProductSuccess(),
    TResult addProductFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductFailed != null) {
      return addProductFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult addProductLoading(_AddProductLoading value),
    @required TResult addProductSuccess(_AddProductSuccess value),
    @required TResult addProductFailed(_AddProductFailed value),
  }) {
    assert(initial != null);
    assert(addProductLoading != null);
    assert(addProductSuccess != null);
    assert(addProductFailed != null);
    return addProductFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult addProductLoading(_AddProductLoading value),
    TResult addProductSuccess(_AddProductSuccess value),
    TResult addProductFailed(_AddProductFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addProductFailed != null) {
      return addProductFailed(this);
    }
    return orElse();
  }
}

abstract class _AddProductFailed implements AddProductState {
  const factory _AddProductFailed() = _$_AddProductFailed;
}

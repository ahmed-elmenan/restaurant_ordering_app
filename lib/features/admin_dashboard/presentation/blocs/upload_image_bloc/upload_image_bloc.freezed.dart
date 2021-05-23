// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'upload_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UploadImageEventTearOff {
  const _$UploadImageEventTearOff();

// ignore: unused_element
  _UploadImageButtonPressed uploadImageButtonPressed() {
    return const _UploadImageButtonPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $UploadImageEvent = _$UploadImageEventTearOff();

/// @nodoc
mixin _$UploadImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult uploadImageButtonPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageButtonPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageButtonPressed(_UploadImageButtonPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageButtonPressed(_UploadImageButtonPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UploadImageEventCopyWith<$Res> {
  factory $UploadImageEventCopyWith(
          UploadImageEvent value, $Res Function(UploadImageEvent) then) =
      _$UploadImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadImageEventCopyWithImpl<$Res>
    implements $UploadImageEventCopyWith<$Res> {
  _$UploadImageEventCopyWithImpl(this._value, this._then);

  final UploadImageEvent _value;
  // ignore: unused_field
  final $Res Function(UploadImageEvent) _then;
}

/// @nodoc
abstract class _$UploadImageButtonPressedCopyWith<$Res> {
  factory _$UploadImageButtonPressedCopyWith(_UploadImageButtonPressed value,
          $Res Function(_UploadImageButtonPressed) then) =
      __$UploadImageButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UploadImageButtonPressedCopyWithImpl<$Res>
    extends _$UploadImageEventCopyWithImpl<$Res>
    implements _$UploadImageButtonPressedCopyWith<$Res> {
  __$UploadImageButtonPressedCopyWithImpl(_UploadImageButtonPressed _value,
      $Res Function(_UploadImageButtonPressed) _then)
      : super(_value, (v) => _then(v as _UploadImageButtonPressed));

  @override
  _UploadImageButtonPressed get _value =>
      super._value as _UploadImageButtonPressed;
}

/// @nodoc
class _$_UploadImageButtonPressed implements _UploadImageButtonPressed {
  const _$_UploadImageButtonPressed();

  @override
  String toString() {
    return 'UploadImageEvent.uploadImageButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UploadImageButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult uploadImageButtonPressed(),
  }) {
    assert(uploadImageButtonPressed != null);
    return uploadImageButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageButtonPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageButtonPressed != null) {
      return uploadImageButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageButtonPressed(_UploadImageButtonPressed value),
  }) {
    assert(uploadImageButtonPressed != null);
    return uploadImageButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageButtonPressed(_UploadImageButtonPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageButtonPressed != null) {
      return uploadImageButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _UploadImageButtonPressed implements UploadImageEvent {
  const factory _UploadImageButtonPressed() = _$_UploadImageButtonPressed;
}

/// @nodoc
class _$UploadImageStateTearOff {
  const _$UploadImageStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ImageUploadLoading imageUploadLoading() {
    return const _ImageUploadLoading();
  }

// ignore: unused_element
  _ImageUploadSuccess imageUploadSuccess(File image) {
    return _ImageUploadSuccess(
      image,
    );
  }

// ignore: unused_element
  _ImageUploadFailed imageUploadFailed() {
    return const _ImageUploadFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $UploadImageState = _$UploadImageStateTearOff();

/// @nodoc
mixin _$UploadImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult imageUploadLoading(),
    @required TResult imageUploadSuccess(File image),
    @required TResult imageUploadFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult imageUploadLoading(),
    TResult imageUploadSuccess(File image),
    TResult imageUploadFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult imageUploadLoading(_ImageUploadLoading value),
    @required TResult imageUploadSuccess(_ImageUploadSuccess value),
    @required TResult imageUploadFailed(_ImageUploadFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult imageUploadLoading(_ImageUploadLoading value),
    TResult imageUploadSuccess(_ImageUploadSuccess value),
    TResult imageUploadFailed(_ImageUploadFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UploadImageStateCopyWith<$Res> {
  factory $UploadImageStateCopyWith(
          UploadImageState value, $Res Function(UploadImageState) then) =
      _$UploadImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadImageStateCopyWithImpl<$Res>
    implements $UploadImageStateCopyWith<$Res> {
  _$UploadImageStateCopyWithImpl(this._value, this._then);

  final UploadImageState _value;
  // ignore: unused_field
  final $Res Function(UploadImageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UploadImageStateCopyWithImpl<$Res>
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
    return 'UploadImageState.initial()';
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
    @required TResult imageUploadLoading(),
    @required TResult imageUploadSuccess(File image),
    @required TResult imageUploadFailed(),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult imageUploadLoading(),
    TResult imageUploadSuccess(File image),
    TResult imageUploadFailed(),
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
    @required TResult imageUploadLoading(_ImageUploadLoading value),
    @required TResult imageUploadSuccess(_ImageUploadSuccess value),
    @required TResult imageUploadFailed(_ImageUploadFailed value),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult imageUploadLoading(_ImageUploadLoading value),
    TResult imageUploadSuccess(_ImageUploadSuccess value),
    TResult imageUploadFailed(_ImageUploadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UploadImageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ImageUploadLoadingCopyWith<$Res> {
  factory _$ImageUploadLoadingCopyWith(
          _ImageUploadLoading value, $Res Function(_ImageUploadLoading) then) =
      __$ImageUploadLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageUploadLoadingCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$ImageUploadLoadingCopyWith<$Res> {
  __$ImageUploadLoadingCopyWithImpl(
      _ImageUploadLoading _value, $Res Function(_ImageUploadLoading) _then)
      : super(_value, (v) => _then(v as _ImageUploadLoading));

  @override
  _ImageUploadLoading get _value => super._value as _ImageUploadLoading;
}

/// @nodoc
class _$_ImageUploadLoading implements _ImageUploadLoading {
  const _$_ImageUploadLoading();

  @override
  String toString() {
    return 'UploadImageState.imageUploadLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageUploadLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult imageUploadLoading(),
    @required TResult imageUploadSuccess(File image),
    @required TResult imageUploadFailed(),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult imageUploadLoading(),
    TResult imageUploadSuccess(File image),
    TResult imageUploadFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadLoading != null) {
      return imageUploadLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult imageUploadLoading(_ImageUploadLoading value),
    @required TResult imageUploadSuccess(_ImageUploadSuccess value),
    @required TResult imageUploadFailed(_ImageUploadFailed value),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult imageUploadLoading(_ImageUploadLoading value),
    TResult imageUploadSuccess(_ImageUploadSuccess value),
    TResult imageUploadFailed(_ImageUploadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadLoading != null) {
      return imageUploadLoading(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadLoading implements UploadImageState {
  const factory _ImageUploadLoading() = _$_ImageUploadLoading;
}

/// @nodoc
abstract class _$ImageUploadSuccessCopyWith<$Res> {
  factory _$ImageUploadSuccessCopyWith(
          _ImageUploadSuccess value, $Res Function(_ImageUploadSuccess) then) =
      __$ImageUploadSuccessCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$ImageUploadSuccessCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$ImageUploadSuccessCopyWith<$Res> {
  __$ImageUploadSuccessCopyWithImpl(
      _ImageUploadSuccess _value, $Res Function(_ImageUploadSuccess) _then)
      : super(_value, (v) => _then(v as _ImageUploadSuccess));

  @override
  _ImageUploadSuccess get _value => super._value as _ImageUploadSuccess;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_ImageUploadSuccess(
      image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$_ImageUploadSuccess implements _ImageUploadSuccess {
  const _$_ImageUploadSuccess(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'UploadImageState.imageUploadSuccess(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageUploadSuccess &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ImageUploadSuccessCopyWith<_ImageUploadSuccess> get copyWith =>
      __$ImageUploadSuccessCopyWithImpl<_ImageUploadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult imageUploadLoading(),
    @required TResult imageUploadSuccess(File image),
    @required TResult imageUploadFailed(),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadSuccess(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult imageUploadLoading(),
    TResult imageUploadSuccess(File image),
    TResult imageUploadFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadSuccess != null) {
      return imageUploadSuccess(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult imageUploadLoading(_ImageUploadLoading value),
    @required TResult imageUploadSuccess(_ImageUploadSuccess value),
    @required TResult imageUploadFailed(_ImageUploadFailed value),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult imageUploadLoading(_ImageUploadLoading value),
    TResult imageUploadSuccess(_ImageUploadSuccess value),
    TResult imageUploadFailed(_ImageUploadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadSuccess != null) {
      return imageUploadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadSuccess implements UploadImageState {
  const factory _ImageUploadSuccess(File image) = _$_ImageUploadSuccess;

  File get image;
  @JsonKey(ignore: true)
  _$ImageUploadSuccessCopyWith<_ImageUploadSuccess> get copyWith;
}

/// @nodoc
abstract class _$ImageUploadFailedCopyWith<$Res> {
  factory _$ImageUploadFailedCopyWith(
          _ImageUploadFailed value, $Res Function(_ImageUploadFailed) then) =
      __$ImageUploadFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ImageUploadFailedCopyWithImpl<$Res>
    extends _$UploadImageStateCopyWithImpl<$Res>
    implements _$ImageUploadFailedCopyWith<$Res> {
  __$ImageUploadFailedCopyWithImpl(
      _ImageUploadFailed _value, $Res Function(_ImageUploadFailed) _then)
      : super(_value, (v) => _then(v as _ImageUploadFailed));

  @override
  _ImageUploadFailed get _value => super._value as _ImageUploadFailed;
}

/// @nodoc
class _$_ImageUploadFailed implements _ImageUploadFailed {
  const _$_ImageUploadFailed();

  @override
  String toString() {
    return 'UploadImageState.imageUploadFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageUploadFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult imageUploadLoading(),
    @required TResult imageUploadSuccess(File image),
    @required TResult imageUploadFailed(),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult imageUploadLoading(),
    TResult imageUploadSuccess(File image),
    TResult imageUploadFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadFailed != null) {
      return imageUploadFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult imageUploadLoading(_ImageUploadLoading value),
    @required TResult imageUploadSuccess(_ImageUploadSuccess value),
    @required TResult imageUploadFailed(_ImageUploadFailed value),
  }) {
    assert(initial != null);
    assert(imageUploadLoading != null);
    assert(imageUploadSuccess != null);
    assert(imageUploadFailed != null);
    return imageUploadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult imageUploadLoading(_ImageUploadLoading value),
    TResult imageUploadSuccess(_ImageUploadSuccess value),
    TResult imageUploadFailed(_ImageUploadFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUploadFailed != null) {
      return imageUploadFailed(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadFailed implements UploadImageState {
  const factory _ImageUploadFailed() = _$_ImageUploadFailed;
}

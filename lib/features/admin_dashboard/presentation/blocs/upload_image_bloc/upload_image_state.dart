part of 'upload_image_bloc.dart';

@freezed
abstract class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.imageUploadLoading() = _ImageUploadLoading;
  const factory UploadImageState.imageUploadSuccess(File image) = _ImageUploadSuccess;
  const factory UploadImageState.imageUploadFailed() = _ImageUploadFailed;
}

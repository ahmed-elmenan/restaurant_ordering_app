part of 'upload_image_bloc.dart';

@freezed
abstract class UploadImageEvent with _$UploadImageEvent {
  const factory UploadImageEvent.uploadImageButtonPressed() = _UploadImageButtonPressed;
}
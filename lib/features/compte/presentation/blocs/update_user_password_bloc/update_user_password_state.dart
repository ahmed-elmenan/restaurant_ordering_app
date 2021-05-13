part of 'update_user_password_bloc.dart';

@freezed
abstract class UpdateUserPasswordState with _$UpdateUserPasswordState {
  const factory UpdateUserPasswordState.initial() = _Initial;
  const factory UpdateUserPasswordState.updatePasswordLoading() = _UpdatePasswordLoading;
  const factory UpdateUserPasswordState.updatePasswordSuccess() = _UpdatePasswordSuccess;
  const factory UpdateUserPasswordState.updatePasswordFailed() = _UpdatePasswordFailed;
}

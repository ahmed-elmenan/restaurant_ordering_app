part of 'update_user_password_bloc.dart';

@freezed
abstract class UpdateUserPasswordEvent with _$UpdateUserPasswordEvent {
  const factory UpdateUserPasswordEvent.updatePasswordButtonPressed(User user, String newPassword) = _UpdatePasswordButtonPressed;
}
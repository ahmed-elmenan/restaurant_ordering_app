part of 'add_user_bloc.dart';

@freezed
abstract class AddUserEvent with _$AddUserEvent {
  const factory AddUserEvent.addUserButtonPressed(UserModel userModel) = _AddUserButtonPressed;
}
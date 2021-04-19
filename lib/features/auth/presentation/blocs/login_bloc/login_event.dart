part of 'login_bloc.dart';

@freezed
abstract class LoginButtonPressEvent with _$LoginButtonPressEvent {
  const factory LoginButtonPressEvent.started({String email, String password}) = _Started;
}
part of 'login_bloc.dart';

@freezed
abstract class LoginButtonPressEvent with _$LoginButtonPressEvent {
  const factory LoginButtonPressEvent.started({String username, String password}) = _Started;
}
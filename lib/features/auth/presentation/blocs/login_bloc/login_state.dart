part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(User user, UserModel userModel) = _Success;
  const factory LoginState.failure(String message) = _Failure;

}

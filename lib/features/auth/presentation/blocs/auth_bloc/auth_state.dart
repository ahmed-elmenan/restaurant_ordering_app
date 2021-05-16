part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticatedState(User user, UserModel userModel) = _AuthenticatedState;
  const factory AuthState.unauthenticatedState() = _UnauthenticatedState;

}

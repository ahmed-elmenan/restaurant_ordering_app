part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitialState extends AuthState {}

class AuthenticatedState extends AuthState {
  User user;

  AuthenticatedState({@required this.user});
}

class UnauthenticatedState extends AuthState {}

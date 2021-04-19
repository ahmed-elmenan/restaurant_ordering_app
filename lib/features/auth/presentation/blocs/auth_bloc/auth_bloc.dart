import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  UserRepository userRepository;

  AuthBloc() : super(_Initial());


  Logger logger;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
     if (event is _Started) {
      try {
        var isSignedIn = userRepository.isSignIn();

        if (isSignedIn) {
          var user = userRepository.getCurrentUser();
          yield _AuthenticatedState(user);
        } else {
          yield _UnauthenticatedState();
        }
      } catch (e) {
        yield _UnauthenticatedState();
      }
    }
  }

  @override
  void onEvent(AuthEvent event) {
    logger?.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<AuthState> change) {
    logger?.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger?.e(error);
    super.onError(error, stackTrace);
  }


}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_password_event.dart';
part 'update_user_password_state.dart';
part 'update_user_password_bloc.freezed.dart';

class UpdateUserPasswordBloc
    extends Bloc<UpdateUserPasswordEvent, UpdateUserPasswordState> {
  UserRepository userRepository;
  UpdateUserPasswordBloc() : super(_Initial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<UpdateUserPasswordState> mapEventToState(
    UpdateUserPasswordEvent event,
  ) async* {
    if (event is _UpdatePasswordButtonPressed) {
      try {
        yield _UpdatePasswordLoading();
        await userRepository.changeUserPassword(event.user, event.newPassword);
        yield _UpdatePasswordSuccess();
      } catch (e) {
        print(e);
      }
    }
  }
}

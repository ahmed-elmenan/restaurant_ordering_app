import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_event.dart';
part 'add_user_state.dart';
part 'add_user_bloc.freezed.dart';

class AddUserBloc extends Bloc<AddUserEvent, AddUserState> {
  UsersRepository usersRepository;
  AddUserBloc() : super(_Initial()) {
    usersRepository = UsersRepository();
  }

  @override
  Stream<AddUserState> mapEventToState(
    AddUserEvent event,
  ) async* {
    if (event is _AddUserButtonPressed) {
      try {
        yield _AddUserLoading();
        await usersRepository.addNewUser(event.userModel);
        yield _AddUserSuccess();
      } catch (e) {
        print("add user bloc error =" + e.toString());
        yield _AddUserFailed();
      }
    }
    // TODO: implement mapEventToState
  }
}

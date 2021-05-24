import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_users_event.dart';
part 'fetch_users_state.dart';
part 'fetch_users_bloc.freezed.dart';

class FetchUsersBloc extends Bloc<FetchUsersEvent, FetchUsersState> {
  UsersRepository usersRepository;
  FetchUsersBloc() : super(_Initial()) {
    usersRepository = UsersRepository();
  }

  @override
  Stream<FetchUsersState> mapEventToState(
    FetchUsersEvent event,
  ) async* {
    if (event is _FetchUsers) {
      try {
        yield _FetchUsersLoading();
        List<UserModel> usersList= await usersRepository.getAllUsers();
        yield _FetchUsersSuccess(usersList);
      } catch (e) {
        print("fetch users bloc error =>" + e.toString());
        yield _FetchUsersFailure();
      }
    }
  }
}

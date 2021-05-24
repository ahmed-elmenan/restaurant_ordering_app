import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  UserRepository userRepository;
  AccountBloc() : super(_LogOutInitial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    if (event is _LogOutButtonPressedEvent) {
      yield _LogOutLoading();
      await userRepository.signOut();
      yield _LogOutSuccess();
    }
  }
}

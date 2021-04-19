import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  UserRepository userRepository;
  AccountBloc() : super(LogOutInitial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    if (event is LogOutButtonPressedEvent) {
      await userRepository.signOut();
      yield LogOutSuccess();
    }
  }
}

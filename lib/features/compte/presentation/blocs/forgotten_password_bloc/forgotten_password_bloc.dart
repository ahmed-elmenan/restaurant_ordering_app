import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotten_password_event.dart';
part 'forgotten_password_state.dart';
part 'forgotten_password_bloc.freezed.dart';

class ForgottenPasswordBloc
    extends Bloc<ForgottenPasswordEvent, ForgottenPasswordState> {
  UserRepository userRepository;
  ForgottenPasswordBloc() : super(_Initial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<ForgottenPasswordState> mapEventToState(
    ForgottenPasswordEvent event,
  ) async* {
    if (event is _PressSendButton) {
      try {
        yield _Loading();
        print("email1 >>>" + event.email);
        userRepository.sendFirebaseForgottenPasswordEmail(event.email);
        print("email >>>" + event.email);
        yield _Success();
      } catch (e) {
        print("bloc >>>" + e);
        yield _Failed();
      }
    }
  }
}

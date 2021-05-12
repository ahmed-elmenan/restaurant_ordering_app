import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_mail_event.dart';
part 'send_mail_state.dart';
part 'send_mail_bloc.freezed.dart';

class SendMailBloc extends Bloc<SendMailEvent, SendMailState> {
  UserRepository userRepository;
  UserModel x;

  SendMailBloc() : super(_Initial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<SendMailState> mapEventToState(
    SendMailEvent event,
  ) async* {
    if (event is _SendMailButtonPressed) {
      try {
        yield _MailSentLoading();

        await userRepository.sendCodeToEmail(event.verificationCode,
            event.user.email);
        print('rah sent');
        yield _MailSentSuccess();
      } catch (e) {
        yield _MailSentFailure();
      }
    }

    // TODO: implement mapEventToState
  }
}

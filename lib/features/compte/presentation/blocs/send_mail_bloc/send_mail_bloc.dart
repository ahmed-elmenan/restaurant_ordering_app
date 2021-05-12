import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_mail_event.dart';
part 'send_mail_state.dart';
part 'send_mail_bloc.freezed.dart';

class SendMailBloc extends Bloc<SendMailEvent, SendMailState> {
  SendMailBloc() : super(_Initial());

  @override
  Stream<SendMailState> mapEventToState(
    SendMailEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

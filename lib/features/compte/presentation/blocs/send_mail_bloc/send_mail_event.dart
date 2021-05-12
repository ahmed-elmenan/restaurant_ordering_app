part of 'send_mail_bloc.dart';

@freezed
abstract class SendMailEvent with _$SendMailEvent {
  const factory SendMailEvent.started() = _Started;
}
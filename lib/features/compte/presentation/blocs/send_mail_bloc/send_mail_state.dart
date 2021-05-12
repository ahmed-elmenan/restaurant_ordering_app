part of 'send_mail_bloc.dart';

@freezed
abstract class SendMailState with _$SendMailState {
  const factory SendMailState.initial() = _Initial;
  const factory SendMailState.mailSentLoading() = _MailSentLoading;
  const factory SendMailState.mailSentSuccess() = _MailSentSuccess;
  const factory SendMailState.mailSentFailure() = _MailSentFailure;
}

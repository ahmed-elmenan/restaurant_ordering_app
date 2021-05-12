part of 'send_mail_bloc.dart';

@freezed
abstract class SendMailState with _$SendMailState {
  const factory SendMailState.initial() = _Initial;
}

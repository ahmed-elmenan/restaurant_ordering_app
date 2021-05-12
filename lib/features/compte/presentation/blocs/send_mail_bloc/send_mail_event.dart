part of 'send_mail_bloc.dart';

@freezed
abstract class SendMailEvent with _$SendMailEvent {
  const factory SendMailEvent.sendMailButtonPressed(User user, UserModel usermodel, String verificationCode) = _SendMailButtonPressed;
}
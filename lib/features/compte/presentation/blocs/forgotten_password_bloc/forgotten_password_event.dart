part of 'forgotten_password_bloc.dart';

@freezed
abstract class ForgottenPasswordEvent with _$ForgottenPasswordEvent {
  const factory ForgottenPasswordEvent.pressSendButton(String email) = _PressSendButton;
}
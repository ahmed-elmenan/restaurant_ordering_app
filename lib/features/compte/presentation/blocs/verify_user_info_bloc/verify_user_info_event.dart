part of 'verify_user_info_bloc.dart';

@freezed
abstract class VerifyUserInfoEvent with _$VerifyUserInfoEvent {
  const factory VerifyUserInfoEvent.verifyIserInfoButtonPressed(String societyName, String partenariatUserName,
      String emailOrPhone) = _VerifyIserInfoButtonPressed;
}
part of 'verify_user_info_bloc.dart';

@freezed
abstract class VerifyUserInfoState with _$VerifyUserInfoState {
  const factory VerifyUserInfoState.initial() = _Initial;
  const factory VerifyUserInfoState.verifyUserInfoLoading() = _VerifyUserInfoLoading;
  const factory VerifyUserInfoState.verifyUserInfoSuccess() = _VerifyUserInfoSuccess;
  const factory VerifyUserInfoState.verifyUserInfoFailure() = _VerifyUserInfoFailure;
}

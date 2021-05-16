part of 'forgotten_password_bloc.dart';

@freezed
abstract class ForgottenPasswordState with _$ForgottenPasswordState {
  const factory ForgottenPasswordState.initial() = _Initial;
  const factory ForgottenPasswordState.loading() = _Loading;
  const factory ForgottenPasswordState.success() = _Success;
  const factory ForgottenPasswordState.failed() = _Failed;
}

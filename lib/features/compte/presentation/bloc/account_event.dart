part of 'account_bloc.dart';

@freezed
abstract class AccountEvent with _$AccountEvent {
  const factory AccountEvent.logOutButtonPressedEvent() = _LogOutButtonPressedEvent;
}
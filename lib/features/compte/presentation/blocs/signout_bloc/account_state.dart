part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState.logOutSuccess() = _LogOutSuccess;
  const factory AccountState.logOutLoading() = _LogOutLoading;
  const factory AccountState.logOutInitial() = _LogOutInitial;
}

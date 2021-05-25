part of 'add_user_bloc.dart';

@freezed
abstract class AddUserState with _$AddUserState {
  const factory AddUserState.initial() = _Initial;
  const factory AddUserState.addUserLoading() = _AddUserLoading;
  const factory AddUserState.addUserSuccess() = _AddUserSuccess;
  const factory AddUserState.addUserFailed() = _AddUserFailed;
}

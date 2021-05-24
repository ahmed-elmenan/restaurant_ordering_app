part of 'fetch_users_bloc.dart';

@freezed
abstract class FetchUsersState with _$FetchUsersState {
  const factory FetchUsersState.initial() = _Initial;
  const factory FetchUsersState.fetchUsersLoading() = _FetchUsersLoading;
  const factory FetchUsersState.fetchUsersSuccess(List<UserModel> usersList) = _FetchUsersSuccess;
  const factory FetchUsersState.fetchUsersFailure() = _FetchUsersFailure;
}

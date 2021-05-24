part of 'fetch_users_bloc.dart';

@freezed
abstract class FetchUsersEvent with _$FetchUsersEvent {
  const factory FetchUsersEvent.fetchUsers() = _FetchUsers;
}
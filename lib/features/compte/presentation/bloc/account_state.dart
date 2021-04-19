part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();
  
  @override
  List<Object> get props => [];
}

class LogOutInitial extends AccountState {}

class LogOutSuccess extends AccountState {}





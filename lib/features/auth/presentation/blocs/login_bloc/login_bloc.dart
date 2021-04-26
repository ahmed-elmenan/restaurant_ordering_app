import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:flutter_application_1/core/services/order.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginButtonPressEvent, LoginState> {
  UserRepository userRepository;

  LoginBloc() : super(_Initial()) {
    userRepository = UserRepository();
  }

  Logger logger;

  @override
  void onEvent(LoginButtonPressEvent event) {
    logger?.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<LoginState> change) {
    logger?.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger?.e(error);
    super.onError(error, stackTrace);
  }

  @override
  Stream<LoginState> mapEventToState(LoginButtonPressEvent event) async* {
    if (event is _Started) {
      try {
        yield _Loading();
        var user = await userRepository.signInUser(event.email, event.password);
        
        OrderServices orderServices = OrderServices();


        // orderServices.createOrder({
        //   'userId' : user.uid,
        //   'id' : user.uid,
        //   'description': 'khowa33'
        // });

        // print(orderServices.ordersList[0].description);
        // print(orderServices.ordersList[1].description);
        yield _Success(user);
      } catch (e) {
        yield _Failure(e.toString());
      }
    }
  }
}

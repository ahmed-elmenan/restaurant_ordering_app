import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/features/compte/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_user_info_event.dart';
part 'verify_user_info_state.dart';
part 'verify_user_info_bloc.freezed.dart';

class VerifyUserInfoBloc
    extends Bloc<VerifyUserInfoEvent, VerifyUserInfoState> {
  UserRepository userRepository;

  VerifyUserInfoBloc() : super(_Initial()) {
    userRepository = UserRepository();
  }

  @override
  Stream<VerifyUserInfoState> mapEventToState(
    VerifyUserInfoEvent event,
  ) async* {
    if (event is _VerifyIserInfoButtonPressed) {
      try {
        yield _VerifyUserInfoLoading();
        UserModel userModel;
        userModel = await userRepository.verifyUserInfo(
            event.societyName, event.partenariatUserName, event.emailOrPhone);
        print('>>>' + userModel.mobileNumber);
        yield _VerifyUserInfoSuccess();
      } catch (e) {
        yield _VerifyUserInfoFailure();
      }
    }

    // TODO: implement mapEventToState
  }
}

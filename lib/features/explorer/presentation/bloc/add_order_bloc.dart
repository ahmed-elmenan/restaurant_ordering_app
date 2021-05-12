import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'add_order_event.dart';
part 'add_order_state.dart';
part 'add_order_bloc.freezed.dart';

class AddOrderBloc extends Bloc<AddOrderEvent, AddOrderState> {
  OrderRepository orderRepository;

  AddOrderBloc() : super(_Initial()) {
    orderRepository = OrderRepository();
  }

  Logger logger;

  @override
  void onEvent(AddOrderEvent event) {
    logger?.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<AddOrderState> change) {
    logger?.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger?.e(error);
    super.onError(error, stackTrace);
  }

  @override
  Stream<AddOrderState> mapEventToState(
    AddOrderEvent event,
  ) async* {
    if (event is _AddOrderButtonPressed) {
      try {
        yield _AddOrderLoading();
        await orderRepository.addOrder(event.order);
        yield _AddOrderSuccess();
      } catch (e) {
        yield _AddOrderFailed(e);
      }
    }
  }
}

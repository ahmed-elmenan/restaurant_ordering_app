import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrderRepository orderRepository;

  OrdersBloc() : super(_Initial()) {
    orderRepository = OrderRepository();
  }

  Logger logger;

  @override
  void onEvent(OrdersEvent event) {
    logger?.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<OrdersState> change) {
    logger?.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger?.e(error);
    super.onError(error, stackTrace);
  }

  @override
  Stream<OrdersState> mapEventToState(
    OrdersEvent event,
  ) async* {
    if (event is _LoadOrders) {
      try {
        yield _LoadOrdersLoading();
        List<OrderModel> ordersList;

        ordersList = await orderRepository.getUserOrders(event.userId);
        print("HOOOW");
        yield _LoadOrdersSuccess(ordersList);
      } catch (e) {
        print(e);
        yield _LoadOrdersFailed(e.toString());
      }
    }
  }
}

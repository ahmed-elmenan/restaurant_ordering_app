import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrderRepository orderRepository;

  OrdersBloc() : super(_Initial()) {
    orderRepository = OrderRepository();
  }

  @override
  Stream<OrdersState> mapEventToState(
    OrdersEvent event,
  ) async* {
    if (event is _Started) {
      try {
        yield _Loading();
        List<OrderModel> ordersList;
        if (event.event_data['status'] != false &&
            event.event_data['date'] != false &&
            event.event_data['date'] != 'Toute' &&
            event.event_data['status'] != 'Toute') {
          print("1111111111111");
          ordersList =
              await orderRepository.getTodayOrdersbyStatus(event.event_data);
        } else if (event.event_data['status'] != false &&
            event.event_data['status'] != 'Toute') {
          print("222222222222222");
          ordersList = await orderRepository
              .getOrderbyStatus(event.event_data['status']);
        } else if (event.event_data['date'] != false &&
            event.event_data['date'] != 'Toute') {
          print("3333333333333");
          ordersList = await orderRepository.getTodayOrders();
        } else {
          print("4444444444");
          ordersList = await orderRepository.getAllOrder();
        }
        print("HOOOW");
        yield _Success(ordersList);
      } catch (e) {
        print('>><<' + e);
        yield _Failed();
      }
    }
  }
}

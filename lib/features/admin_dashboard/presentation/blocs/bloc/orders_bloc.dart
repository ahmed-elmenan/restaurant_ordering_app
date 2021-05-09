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

  OrdersBloc() : super(_Initial()){
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

        ordersList = await orderRepository.getAllOrder();
        print("HOOOW");
        yield _Success(ordersList);
      } catch (e) {
        print(e);
        yield _Failed();
      }
    }
  }
}

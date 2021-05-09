import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_order_state_event.dart';
part 'update_order_state_state.dart';
part 'update_order_state_bloc.freezed.dart';

class UpdateOrderStateBloc extends Bloc<UpdateOrderStateEvent, UpdateOrderStateState> {

  OrderRepository orderRepository;

  UpdateOrderStateBloc() : super(_Initial()){
    orderRepository = OrderRepository();
  }

  @override
  Stream<UpdateOrderStateState> mapEventToState(
    UpdateOrderStateEvent event,
  ) async* {
    if (event is _UpdateOrderState) {
      try {
        yield _Loading();
        // OrderModel order;

        await orderRepository.updateOrderState(event.order);
        print("UPDATED");
        yield _Success();
      } catch (e) {
        print(e);
        yield _Failed();
      }
    }
  }
}

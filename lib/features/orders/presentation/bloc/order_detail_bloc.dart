import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'order_detail_event.dart';
part 'order_detail_state.dart';
part 'order_detail_bloc.freezed.dart';

class OrderdetailblocBloc
    extends Bloc<OrderdetailblocEvent, OrderdetailblocState> {
  OrderRepository orderRepository;

  OrderdetailblocBloc() : super(_Initial()) {
    orderRepository = OrderRepository();
  }

  Logger logger;

  @override
  void onEvent(OrderdetailblocEvent event) {
    logger?.d(event.toString());
    super.onEvent(event);
  }

  @override
  void onChange(Change<OrderdetailblocState> change) {
    logger?.d(change.nextState.toString());
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    logger?.e(error);
    super.onError(error, stackTrace);
  }

  @override
  Stream<OrderdetailblocState> mapEventToState(
    OrderdetailblocEvent event,
  ) async* {
    if (event is _LoadOrderDetail) {
      try {
        yield _LoadOrderDetailLoading();
        OrderModel order = await orderRepository.getOrderDetail(event.orderId);
        if (order.delivered == false)
          yield _LoadOrderDetailOnProgressSuccess(order);
        else if (order.delivered == true)
          yield _LoadOrderDetailDeliveredSuccess(order);
      } catch (e) {
        yield _LoadOrderDetailFailed(e.toString());
      }
    }
  }
}

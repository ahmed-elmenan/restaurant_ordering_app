part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loadOrdersLoading() = _LoadOrdersLoading;
  const factory OrdersState.loadOrdersSuccess(List<OrderModel> ordersList) = _LoadOrdersSuccess;
  const factory OrdersState.loadOrdersFailed(String message) = _LoadOrdersFailed;
}

part of 'orders_bloc.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loading() = _Loading;
  const factory OrdersState.success(List<OrderModel> ordersList) = _Success;
  const factory OrdersState.failed() = _Failed;
}

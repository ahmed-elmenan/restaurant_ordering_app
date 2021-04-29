part of 'add_order_bloc.dart';

@freezed
abstract class AddOrderEvent with _$AddOrderEvent {
  const factory AddOrderEvent.addOrderButtonPressed(OrderModel order) = _AddOrderButtonPressed;
}
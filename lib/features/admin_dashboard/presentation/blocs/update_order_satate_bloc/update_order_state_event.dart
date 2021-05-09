part of 'update_order_state_bloc.dart';

@freezed
abstract class UpdateOrderStateEvent with _$UpdateOrderStateEvent {
  const factory UpdateOrderStateEvent.updateOrderState(OrderModel order) =
      _UpdateOrderState;
}

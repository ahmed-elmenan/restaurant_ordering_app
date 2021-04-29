part of 'add_order_bloc.dart';

@freezed
abstract class AddOrderState with _$AddOrderState {
  const factory AddOrderState.initial() = _Initial;
  const factory AddOrderState.addOrderLoading() = _AddOrderLoading;
  const factory AddOrderState.addOrderSuccess() = _AddOrderSuccess;
  const factory AddOrderState.addOrderFailed(String message) = _AddOrderFailed;
}

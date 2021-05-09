part of 'update_order_state_bloc.dart';

@freezed
abstract class UpdateOrderStateState with _$UpdateOrderStateState {
  const factory UpdateOrderStateState.initial() = _Initial;
  const factory UpdateOrderStateState.loading() = _Loading;
  const factory UpdateOrderStateState.success() = _Success;
  const factory UpdateOrderStateState.failed() = _Failed;
}

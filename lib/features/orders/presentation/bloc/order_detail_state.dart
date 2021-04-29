part of 'order_detail_bloc.dart';

@freezed
abstract class OrderdetailblocState with _$OrderdetailblocState {
  const factory OrderdetailblocState.initial() = _Initial;
  const factory OrderdetailblocState.loadOrderDetailLoading() =
      _LoadOrderDetailLoading;
  const factory OrderdetailblocState.loadOrderDetailOnProgressSuccess(OrderModel order) =
      _LoadOrderDetailOnProgressSuccess;
  const factory OrderdetailblocState.loadOrderDetailDeliveredSuccess(OrderModel order) =
      _LoadOrderDetailDeliveredSuccess;
  const factory OrderdetailblocState.loadOrderDetailFailed(String message) =
      _LoadOrderDetailFailed;
}

part of 'order_detail_bloc.dart';

@freezed
abstract class OrderdetailblocEvent with _$OrderdetailblocEvent {
  const factory OrderdetailblocEvent.loadOrderDetail(String orderId) = _LoadOrderDetail;
}
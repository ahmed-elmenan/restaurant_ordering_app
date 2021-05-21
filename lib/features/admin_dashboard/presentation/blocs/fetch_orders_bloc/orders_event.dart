part of 'orders_bloc.dart';

@freezed
abstract class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.started(Map<String, dynamic> event_data) = _Started;
}
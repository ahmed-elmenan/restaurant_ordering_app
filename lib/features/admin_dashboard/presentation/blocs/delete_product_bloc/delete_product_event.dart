part of 'delete_product_bloc.dart';

@freezed
abstract class DeleteProductEvent with _$DeleteProductEvent {
  const factory DeleteProductEvent.deleteProductSwiped(String productId) = _DeleteProductSwiped;
}
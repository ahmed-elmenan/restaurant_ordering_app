part of 'add_product_bloc.dart';

@freezed
abstract class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.addProductButtonPressed(ProductModel productModel, File image) = _AddProductButtonPressed;
}
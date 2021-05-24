part of 'get_products_bloc.dart';

@freezed
abstract class GetProductsEvent with _$GetProductsEvent {
  const factory GetProductsEvent.fetchProducts() = _FetchProducts;
}
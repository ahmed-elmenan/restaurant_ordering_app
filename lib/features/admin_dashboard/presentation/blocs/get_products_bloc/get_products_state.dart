part of 'get_products_bloc.dart';

@freezed
abstract class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _Initial;
  const factory GetProductsState.getProductsLoading() = _GetProductsLoading;
  const factory GetProductsState.getProductsSuccess(List<ProductModel> productList) = _GetProductsSuccess;
  const factory GetProductsState.getProductsFailed() = _GetProductsFailed;
}

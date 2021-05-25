part of 'delete_product_bloc.dart';

@freezed
abstract class DeleteProductState with _$DeleteProductState {
  const factory DeleteProductState.initial() = _Initial;
  const factory DeleteProductState.deleteProductLoading() = _DeleteProductLoading;
  const factory DeleteProductState.deleteProductSuccess() = _DeleteProductSuccess;
  const factory DeleteProductState.deleteProductFailed() = _DeleteProductFailed;
}

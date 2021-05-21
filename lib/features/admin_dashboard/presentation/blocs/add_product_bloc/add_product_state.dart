part of 'add_product_bloc.dart';

@freezed
abstract class AddProductState with _$AddProductState {
  const factory AddProductState.initial() = _Initial;
  const factory AddProductState.addProductLoading() = _AddProductLoading;
  const factory AddProductState.addProductSuccess() = _AddProductSuccess;
  const factory AddProductState.addProductFailed() = _AddProductFailed;
}

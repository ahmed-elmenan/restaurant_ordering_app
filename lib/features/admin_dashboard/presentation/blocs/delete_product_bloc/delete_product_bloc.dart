import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  ProductRepository productRepository;

  DeleteProductBloc() : super(_Initial()) {
    productRepository = ProductRepository();
  }

  @override
  Stream<DeleteProductState> mapEventToState(
    DeleteProductEvent event,
  ) async* {
    try {
      yield _DeleteProductLoading();
      await productRepository.deleteProduct(event.productId);
      yield _DeleteProductSuccess();
    } catch (e) {
      yield _DeleteProductFailed();
    }
  }
}

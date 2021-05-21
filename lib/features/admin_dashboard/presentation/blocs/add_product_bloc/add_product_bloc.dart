import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  ProductRepository productRepository;

  AddProductBloc() : super(_Initial()) {
    productRepository = ProductRepository();
  }

  @override
  Stream<AddProductState> mapEventToState(
    AddProductEvent event,
  ) async* {
    if (event is _AddProductButtonPressed) {
      try {
        yield _AddProductLoading();
        await productRepository.addProduct(event.productModel);
        yield _AddProductSuccess();
      } catch (e) {
        yield _AddProductFailed();
      }
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_event.dart';
part 'get_products_state.dart';
part 'get_products_bloc.freezed.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  ProductRepository productRepository;

  GetProductsBloc() : super(_Initial()) {
    productRepository = ProductRepository();
  }

  @override
  Stream<GetProductsState> mapEventToState(
    GetProductsEvent event,
  ) async* {
    if (event is _FetchProducts) {
      try {
        yield _GetProductsLoading();
        await productRepository.getAllProduct();
        yield _GetProductsSuccess(productRepository.productList);
      } catch (e) {
        print( e.toString());
        yield _GetProductsFailed();
      }
    }
  }
}

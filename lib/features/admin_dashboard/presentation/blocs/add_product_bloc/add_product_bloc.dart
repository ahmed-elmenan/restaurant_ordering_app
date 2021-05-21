import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc() : super(_Initial());

  @override
  Stream<AddProductState> mapEventToState(
    AddProductEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/domain/repositories/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';
part 'upload_image_bloc.freezed.dart';

class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  ProductRepository productRepository;
  UploadImageBloc() : super(_Initial()) {
    productRepository = ProductRepository();
  }

  @override
  Stream<UploadImageState> mapEventToState(
    UploadImageEvent event,
  ) async* {
    if (event is _UploadImageButtonPressed) {
      try {
        yield _ImageUploadLoading();
        File image = await productRepository.pickImage();
        
        print("ngokhkh");
        yield _ImageUploadSuccess(image);
      } catch (e) {
        yield _ImageUploadFailed();
      }
    }
    // TODO: implement mapEventToState
  }
}

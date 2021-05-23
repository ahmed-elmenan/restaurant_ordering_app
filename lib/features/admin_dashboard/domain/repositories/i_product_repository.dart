import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/services/product.dart';
import 'package:image_picker/image_picker.dart';

class ProductRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  ProductServices _productServices = ProductServices();
  ProductModel _productModel;

  // ProductRepository() {
  // }

  Future addProduct(ProductModel productModel) async {
    try {
      await _productServices.createproduct({
        "productName": productModel.name,
        "productId": productModel.id,
        "productDescription": productModel.description,
        "productImageURL": productModel.imageURL,
        "productPrice": productModel.price
      });
    } catch (e) {
      print("+++++++++++>" + e);
    }
  }

  Future<File> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    return File(pickedFile.path);
  }

  Future<String> uploadImageToFirebase(File imageFile) async {
    String imageURL;
    try {
      String fileName = basename(imageFile.path);
      Reference firebaseStorageRef = storage.ref().child('uploads/$fileName');
      UploadTask uploadTask = firebaseStorageRef.putFile(imageFile);
      await uploadTask.then((res) async {
        imageURL = await res.ref.getDownloadURL();
        print('>>>>>>>uploaded>>>>>' + imageURL);
      });
    } catch (e) {
      print("===e===>" + e);
      return null;
    }
    return imageURL;
  }
}

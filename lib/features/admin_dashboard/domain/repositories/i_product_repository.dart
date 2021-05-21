import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/product.dart';

class ProductRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  ProductServices _productServices = ProductServices();
  ProductModel _productModel;

  // ProductRepository() {
  // }

  Future addProduct(ProductModel productModel) async {
    try {
      await _productServices.createproduct({
        "productName": productModel.name,
        "productId": productModel.id,
        "productDescription" : productModel.description,
        "productImageURL": productModel.imageURL,
        "productPrice": productModel.price
      });
    } catch (e) {
      print(e);
    }
  }
}

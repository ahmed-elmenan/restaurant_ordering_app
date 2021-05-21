import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/product.dart';

class ProductServices {
  String collection = "products";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<ProductModel> productsList;
  ProductModel product;

  productServices() {
    this.productsList = [];
  }

  Future createproduct(Map<String, dynamic> values) async {
    try {
      await _fireStore.collection(collection).doc(values["id"]).set(values);
    } catch (e) {
      print(e);
    }
  }
}

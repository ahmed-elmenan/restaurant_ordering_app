import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/product.dart';

class ProductServices {
  String collection = "products";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<ProductModel> productsList = [];
  ProductModel product;

  productServices() {}

  Future createproduct(Map<String, dynamic> values) async {
    try {
      print("iddddd" + values["id"]);
      await _fireStore.collection(collection).doc(values["id"]).set(values);
    } catch (e) {
      print(e);
    }
  }

  Future<List<ProductModel>> fetchProducts() async {
    try {
      await _fireStore
          .collection(collection)
          // .orderBy('createdAt', descending: false)
          .get()
          .then((doc) {
        if (this.productsList != null) this.productsList.clear();
        doc.docs.forEach((DocumentSnapshot doc) {
          if (ProductModel.fromSnapshot(doc) != null)
            this.productsList.add(ProductModel.fromSnapshot(doc));
        });
      });
      return this.productsList;
    } catch (e) {
      print("get order service error :" + e.toString());
    }
  }

  Future deleteProductbyId(String productId) async {
    print("productId = " + productId);
    try {
      await _fireStore.collection(collection).doc(productId).delete();
    } catch (e) {
      print("delete product service error =>" + e.toString());
    }
  }
}

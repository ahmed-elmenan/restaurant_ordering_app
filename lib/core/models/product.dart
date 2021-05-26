import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const PRODUCT_ID = "id";
  static const PRODUCT_NAME = "productName";
  static const PRODUCT_DESCRIPTION = "productDescription";
  static const PRODUCT_PRICE = "productPrice";
  static const PRODUCT_IMAGE_URL = "productImageURL";
  static const RATING = "rating";
  static const RATES = "rates";

  String id;
  String name;
  String description;
  String imageURL;
  double rating;
  double price;
  int rates;

  // String get id => _id;
  // String get name => _name;
  // String get image => _image;
  // double get rating => _rating;
  // int get rates => _rates;
  // double get price => _price;
  ProductModel();

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    id = snapshot.data()[PRODUCT_ID];
    name = snapshot.data()[PRODUCT_NAME];
    imageURL = snapshot.data()[PRODUCT_IMAGE_URL];
    description = snapshot.data()[PRODUCT_DESCRIPTION];
    price = snapshot.data()[PRODUCT_PRICE];
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const RATING = "rating";
  static const RATES = "rates";
  static const PRICE = "price";

  String _id;
  String _name;
  String _image;
  double _rating;
  double _price;
  int _rates;

  String get id => _id;
  String get name => _name;
  String get image => _image;
  double get rating => _rating;
  int get rates => _rates;
  double get price => _price;

  Product.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _name = snapshot.data()[NAME];
    _image = snapshot.data()[IMAGE];
    _rating = snapshot.data()[RATING];
    _rates = snapshot.data()[RATES];
    _price = snapshot.data()[PRICE];
  }
}

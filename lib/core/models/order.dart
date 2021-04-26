import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  static const ID = "id";
  static const DESCRIPTION = "description";
  static const PRODUCT_ID = "productId";
  static const USER_ID = "userId";
  static const AMOUNT = "amount";
  static const STATUS = "status";
  static const CREATED_AT = "createdAt";

  String _id;
  String _productId;
  String _userId;
  String _description;
  int _amount;
  String _status;
  Timestamp _createdAt;

  String get id => _id;
  String get productId => _productId;
  String get userId => _userId;
  String get description => _description;
  int get amount => _amount;
  String get status => _status;
  Timestamp get createdAt => _createdAt;

  OrderModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _productId = snapshot.data()[PRODUCT_ID];
    _userId = snapshot.data()[USER_ID];
    _description = snapshot.data()[DESCRIPTION];
    _amount = snapshot.data()[AMOUNT];
    _status = snapshot.data()[STATUS];
    _createdAt = snapshot.data()[CREATED_AT];
  }
}

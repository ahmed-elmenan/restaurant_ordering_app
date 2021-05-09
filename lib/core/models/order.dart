import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  static const ID = "id";
  static const NAME = "name";
  static const PRODUCT_ID = "productId";
  static const USER_ID = "userId";
  static const AMOUNT = "amount";
  static const STATUS = "status";
  static const DELIVERED = "delivered";
  static const CREATED_AT = "createdAt";
  static const ORDER_FORM = "orderForm";
  static const ORDER_CODE = "orderCode";
  static const TOTAL_PRICE = "totalPrice";

  String id;
  String _productId;
  String userId;
  String name;
  int amount;
  bool _delivered;
  String status;
  DateTime _createdAt;
  Map<String, dynamic> orderForm = {};
  String orderCode;
  double totalPrice;

  // String get id => id;
  String get productId => _productId;
  // String get userId => userId;
  // String get name => name;
  // int get amount => amount;
  bool get delivered => _delivered;
  // Map<String, dynamic> get orderForm => _orderForm;
  DateTime get createdAt => _createdAt;

  OrderModel() {
    orderForm["EXTRA"] = [];
  }

  OrderModel.fromSnapshot(DocumentSnapshot snapshot) {
    id = snapshot.data()[ID];
    _productId = snapshot.data()[PRODUCT_ID];
    userId = snapshot.data()[USER_ID];
    name = snapshot.data()[NAME];
    amount = snapshot.data()[AMOUNT];
    status = snapshot.data()[STATUS];
    _delivered = snapshot.data()[DELIVERED];
    orderCode = snapshot.data()[ORDER_CODE];
    orderForm = snapshot.data()[ORDER_FORM];
    totalPrice = snapshot.data()[TOTAL_PRICE];
    _createdAt =
        DateTime.parse(snapshot.data()[CREATED_AT].toDate().toString());
  }
}

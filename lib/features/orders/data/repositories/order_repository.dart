import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/order.dart';

class OrderRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  OrderServices _orderServices = OrderServices();
  OrderModel _userModel;

  // getters

 OrderRepository();

  Future <List<OrderModel>> getUserOrders(
      String userId) async {
    try {
      
      await _orderServices.getOrderByUserId(userId);
      
      return _orderServices.ordersList;
    }  catch (e) {
      return [];
    } 
  }
}
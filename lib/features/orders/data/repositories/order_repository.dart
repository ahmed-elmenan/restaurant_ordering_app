import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/constants/products_prices.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/order.dart';
import 'package:flutter_application_1/core/utils/calculate_total.dart';
import 'package:uuid/uuid.dart';

class OrderRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  OrderServices _orderServices = OrderServices();
  OrderModel _userModel;

  // getters

  OrderRepository();

  Future<List<OrderModel>> getUserOrders(String userId) async {
    try {
      await _orderServices.getOrderByUserId(userId);

      return _orderServices.ordersList;
    } catch (e) {
      return [];
    }
  }

  Future<OrderModel> getOrderDetail(String orderId) async {
    try {
      await _orderServices.getOrderDetailById(orderId);
      return _orderServices.order;
    } catch (e) {
      return null;
    }
  }

  Future<bool> addOrder(OrderModel order) async {
    var uuid = Uuid();
    try {
      await _orderServices.createOrder({
        "userId": order.id,
        "id": order.id,
        "orderForm": order.orderForm,
        "status": "pending",
        "orderCode": order.orderCode,
        "name": "name",
        "totalPrice": order.totalPrice,
        "amount": order.amount,
        "createdAt": DateTime.now(),
        "delivered": false
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}

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

  Future<List<OrderModel>> getUserOrders(String userName) async {
    try {
      await _orderServices.getOrderByUserId(userName);

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

  Future<List<OrderModel>> getAllOrder() async {
    try {
      await _orderServices.getOrders();
      return _orderServices.ordersList;
    } catch (e) {
      return null;
    }
  }

  Future<List<OrderModel>> getOrderbyStatus(String status) async {
    try {
      await _orderServices.getOrderByStatus(status);
      return _orderServices.ordersList;
    } catch (e) {
      return null;
    }
  }

  Future<List<OrderModel>> getTodayOrdersbyStatus(Map<String, dynamic> data) async {
    try {
      await _orderServices.getOrderByStatusAndDate(data);
      return _orderServices.ordersList;
    } catch (e) {
      return null;
    }
  }

  Future<List<OrderModel>> getTodayOrders() async {
    try {
      await _orderServices.getOrderByDate();
      return _orderServices.ordersList;
    } catch (e) {
      return null;
    }
  }

  Future<List<OrderModel>> updateOrderState(OrderModel order) async {
    try {
      await _orderServices.updateOrderData({
        "userId": order.id,
        "id": order.id,
        "orderForm": order.orderForm,
        "status": order.status,
        "orderCode": order.orderCode,
        "name": order.name,
        "totalPrice": order.totalPrice,
        "amount": order.amount,
        "createdAt": order.createdAt,
        "client": order.client,
        "delivered": false
      });
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
        "status": "En attente",
        "orderCode": order.orderCode,
        "name": order.name,
        "totalPrice": order.totalPrice,
        "amount": order.amount,
        "createdAt": DateTime.now(),
        "client": order.client,
        "delivered": false
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}

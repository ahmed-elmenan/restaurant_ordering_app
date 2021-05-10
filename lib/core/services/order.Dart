import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/order.dart';

class OrderServices {
  String collection = "orders";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<OrderModel> ordersList;
  OrderModel order;

  OrderServices() {
    this.ordersList = [];
  }

  void createOrder(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).set(values);
  }

  void updateOrderData(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).update(values);
  }

  Future<List<OrderModel>> getOrderByUserId(String client) async {
    await _fireStore
        .collection(collection)
        .where("client", isEqualTo: client)
        .orderBy('createdAt', descending: true)
        .get()
        .then((doc) {
      if (this.ordersList != null) this.ordersList.clear();
      doc.docs.forEach((DocumentSnapshot doc) {
        if (OrderModel.fromSnapshot(doc) != null)
          this.ordersList.add(OrderModel.fromSnapshot(doc));
      });
    });
  }

  Future<List<OrderModel>> getOrders() async {
    await _fireStore
        .collection(collection)
        .orderBy('createdAt', descending: true)
        .get()
        .then((doc) {
      if (this.ordersList != null) this.ordersList.clear();
      doc.docs.forEach((DocumentSnapshot doc) {
        if (OrderModel.fromSnapshot(doc) != null)
          this.ordersList.add(OrderModel.fromSnapshot(doc));
      });
    });
  }

  Future<OrderModel> getOrderDetailById(String orderId) async {
    await _fireStore
        .collection(collection)
        .where("id", isEqualTo: orderId)
        .get()
        .then((doc) {
      doc.docs.forEach((DocumentSnapshot doc) {
        this.order = OrderModel.fromSnapshot(doc);
      });
    });
  }
}

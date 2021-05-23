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

  Future<List<OrderModel>> getOrderByStatus(String status) async {
    await _fireStore
        .collection(collection)
        .where("status", isEqualTo: status)
        .orderBy('createdAt', descending: false)
        .get()
        .then((doc) {
      if (this.ordersList != null) this.ordersList.clear();
      doc.docs.forEach((DocumentSnapshot doc) {
        if (OrderModel.fromSnapshot(doc) != null)
          this.ordersList.add(OrderModel.fromSnapshot(doc));
      });
    });
  }

  Future<List<OrderModel>> getOrderByStatusAndDate(
      Map<String, dynamic> data) async {
    DateTime _now = DateTime.now();
    DateTime _start = DateTime(_now.year, _now.month, _now.day, 0, 0);
    DateTime _end = DateTime(_now.year, _now.month, _now.day, 23, 59, 59);

    await _fireStore
        .collection(collection)
        .where("status", isEqualTo: data['status'])
        .where('createdAt', isGreaterThanOrEqualTo: _start)
        .where('createdAt', isLessThanOrEqualTo: _end)
        .orderBy('createdAt', descending: false)
        .get()
        .then((doc) {
      if (this.ordersList != null) this.ordersList.clear();
      doc.docs.forEach((DocumentSnapshot doc) {
        if (OrderModel.fromSnapshot(doc) != null)
          this.ordersList.add(OrderModel.fromSnapshot(doc));
      });
    });
  }

  Future<List<OrderModel>> getOrderByDate() async {
    DateTime _now = DateTime.now();
    DateTime _start = DateTime(_now.year, _now.month, _now.day, 0, 0);
    DateTime _end = DateTime(_now.year, _now.month, _now.day, 23, 59, 59);

    await _fireStore
        .collection(collection)
        .where('createdAt', isGreaterThanOrEqualTo: _start)
        .where('createdAt', isLessThanOrEqualTo: _end)
        .orderBy('createdAt', descending: false)
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
        .orderBy('createdAt', descending: false)
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

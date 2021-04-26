import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/order.dart';

class OrderServices {
  String collection = "orders";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  List<OrderModel> ordersList;

  OrderServices() {
    this.ordersList = [];
  }

  void createOrder(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).set(values);
  }

  void updateUSerData(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).update(values);
  }

  Future<List<OrderModel>> getOrderByUserId(String id) async {
    await _fireStore
        .collection(collection)
        .where("userId", isEqualTo: id)
        .orderBy('createdAt', descending: true)
        .get()
        .then((doc) {
      doc.docs.forEach((DocumentSnapshot doc) {
        if (OrderModel.fromSnapshot(doc) != null)
          this.ordersList.add(OrderModel.fromSnapshot(doc));
      });
    });
  }
}

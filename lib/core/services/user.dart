import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/user.dart';

class UserServices {
  String collection = "product";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  void createUser(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).set(values);
  }

  void updateUSerData(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).update(values);
  }

  Future<UserModel> getUserById(String id){
    _fireStore.collection(collection).doc(id).get().then((doc) {
      return UserModel.fromSnapshot(doc);
    });
  }
}

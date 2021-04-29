import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/core/models/user.dart';

class UserServices {
  String collection = "users";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  UserModel user;

  void createUser(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).set(values);
  }

  void updateUSerData(Map<String, dynamic> values) {
    _fireStore.collection(collection).doc(values["id"]).update(values);
  }

  Future<UserModel> getUserById(String id) async {
    await _fireStore.collection(collection).doc(id).get().then((doc) {
      return UserModel.fromSnapshot(doc);
    });
  }

  Future<UserModel> getUserByUsername(String username) async {
    await _fireStore
        .collection(collection)
        .where("partenariatUserName", isEqualTo: username)
        .get()
        .then((doc) {
      doc.docs.forEach((DocumentSnapshot doc) {
        this.user = UserModel.fromSnapshot(doc);
        print("++++x++++>" + this.user.email);
      });
    });
    return this.user;
  }
}

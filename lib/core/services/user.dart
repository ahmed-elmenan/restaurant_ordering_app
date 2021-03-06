import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:string_validator/string_validator.dart';

class UserServices {
  String collection = "users";
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  UserModel user;

  Future<User> userSignUp(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print("userSignUp service error =>" + e.toString());
    }
    return null;
  }

  Future createUser(Map<String, dynamic> values) async {
    try {
      await _fireStore.collection(collection).doc(values["id"]).set(values);
    } catch (e) {
      print("create user service error = " + e.toString());
    }
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

  Future<UserModel> getUserByInfo(String societyName,
      String partenariatUserName, String emailOrPhone) async {
    String isEmailOrTel =
        isNumeric(emailOrPhone) == true ? "mobileNumber" : "email";
    print('>>>>>>>>>' + isEmailOrTel);

    try {
      await _fireStore
          .collection(collection)
          .where("partenariatUserName", isEqualTo: partenariatUserName)
          .where("companyName", isEqualTo: societyName)
          .where(isEmailOrTel, isEqualTo: emailOrPhone)
          .get()
          .then((doc) {
        doc.docs.forEach((DocumentSnapshot doc) {
          this.user = UserModel.fromSnapshot(doc);
          print("++++x++++>" + this.user.email);
        });
      });
    } catch (e) {
      print('<<<<<' + e);
    }
    print('>>>>>>>>>' + user.companyName);
    return this.user;
  }

  Future<List<UserModel>> fetchUsers() async {
    List<UserModel> usersList = [];
    try {
      await _fireStore.collection(collection).get().then((doc) {
        if (usersList != null) usersList.clear();
        doc.docs.forEach((DocumentSnapshot doc) {
          if (UserModel.fromSnapshot(doc) != null)
            usersList.add(UserModel.fromSnapshot(doc));
        });
      });
    } catch (e) {
      print('fetch users service error =>' + e.toString());
    }
    return usersList;
  }
}

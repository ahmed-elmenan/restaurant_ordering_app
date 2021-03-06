import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/user.dart';

class UsersRepository {
  FirebaseAuth firebaseAuth;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UserServices _userServices = UserServices();
  UserModel _userModel;
  User _user;

  Future<List<UserModel>> getAllUsers() async {
    try {
      return await _userServices.fetchUsers();
    } catch (e) {
      print("repo get all users error =>" + e.toString());
      return null;
    }
  }

  Future addNewUser(UserModel userModel) async {
    try {
      User user = await _userServices.userSignUp(userModel.email, userModel.password);
      await _userServices.createUser({
        "id": user.uid,
        "partenariatUserName": userModel.partenariatUserName,
        "email": userModel.email,
        "mobileNumber": userModel.mobileNumber,
        "companyName": userModel.companyName,
        "status": userModel.status
      });
    } catch (e) {
      print("add user repo error = " + e.toString());
    }
  }
}

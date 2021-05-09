import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/services/user.dart';

class UserRepository {
  FirebaseAuth firebaseAuth;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UserServices _userServices = UserServices();
  UserModel _userModel;
  User _user;

  // getters

  UserRepository() {
    this.firebaseAuth = FirebaseAuth.instance;
  }

  Future<User> signInUser(String email, String password) async {
    var result = await firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return result.user;
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  bool isSignIn() {
    return firebaseAuth.currentUser != null;
  }

  Future<UserModel> getUserById(String id) async {
    await _userServices.getUserById(id);
  }

  User getCurrentUser() {
    return firebaseAuth.currentUser;
  }
}

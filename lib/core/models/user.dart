import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const COMPANY_NAME = "companyName";
  static const PARTENARIAT_USERNAME = "partenariatUserName";
  static const EMAIL = "email";
  static const MOBILE_NUMBER = "mobileNumber";
  static const LIKED_FOOD = "likedFood";
  static const STRIPE_ID = "stripeId";

  String _companyName;
  String _partenariatUserName;
  String _email;
  String _mobileNumber;
  List _likedFood;
  String _id;
  String _stripeId;

  String get id => _id;
  String get companyName => _companyName;
  String get partenariatUserName => _partenariatUserName;
  String get email => _email;
  String get mobileNumber => _mobileNumber;
  String get stripeId => _stripeId;
  List get likedFood => _likedFood;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    _companyName = snapshot.data()[COMPANY_NAME];
    _partenariatUserName = snapshot.data()[PARTENARIAT_USERNAME];
    _email = snapshot.data()[EMAIL];
    _mobileNumber = snapshot.data()[MOBILE_NUMBER];
    _id = snapshot.data()[ID];
    _stripeId = snapshot.data()[STRIPE_ID];
    _likedFood = snapshot.data()[LIKED_FOOD] ?? [];
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const ID = "id";
  static const COMPANY_NAME = "companyName";
  static const PARTENARIAT_USERNAME = "partenariatUserName";
  static const EMAIL = "email";
  static const MOBILE_NUMBER = "mobileNumber";
  static const LIKED_FOOD = "likedFood";
  static const STATUS = "status";

  String companyName;
  String partenariatUserName;
  String email;
  String mobileNumber;
  List likedFood;
  String id;
  String status;
  String password;

  UserModel();

  // String get id => _id;
  // String get companyName => _companyName;
  // String get partenariatUserName => _partenariatUserName;
  // String get email => _email;
  // String get mobileNumber => _mobileNumber;
  // List get likedFood => _likedFood;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    companyName = snapshot.data()[COMPANY_NAME];
    partenariatUserName = snapshot.data()[PARTENARIAT_USERNAME];
    email = snapshot.data()[EMAIL];
    mobileNumber = snapshot.data()[MOBILE_NUMBER];
    id = snapshot.data()[ID];
    status = snapshot.data()[STATUS];
    likedFood = snapshot.data()[LIKED_FOOD] ?? [];
  }

  Map<String, dynamic> toJson() => {
        'companyName': companyName,
        'partenariatUserName': partenariatUserName,
        'email': email,
        'mobileNumber': mobileNumber,
        'id': id,
        'status': status,
        'likedFood': likedFood,
      };

  UserModel.fromJson(Map<String, dynamic> json)
      : companyName = json['companyName'],
        partenariatUserName = json['partenariatUserName'],
        email = json['email'],
        mobileNumber = json['mobileNumber'],
        id = json['id'],
        status = json['status'],
        likedFood = json['likedFood'];
}

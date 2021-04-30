import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  static const kRoboto = "Roboto";
  static const kNeoSansArabic = "NeoSansArabic";

  static const kColorLime = Color(0xFF4BA686);
  static const kButtonInputBg = Color(0xFFDEDEDE);
  static const kBottomNavBarIconBorderColor = Color(0xFF3B846B);
  static Color kExtraColor = Colors.yellow[800];

  static TextStyle headerStyle(Color color) {
    return TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.w600);
  }
}

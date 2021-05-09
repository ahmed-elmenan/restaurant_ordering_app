import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  static const kRoboto = "Roboto";
  static const kNeoSansArabic = "NeoSansArabic";

  static const kColorLime = Color(0xFF4BA686);
  static const ktitleColor = Color(0xFF4F545D);
  static const kButtonInputBg = Color(0xFFF7F7F7);
  static const kSecondaryText = Color(0xFF9498A0);
  static const kOrderCardArrow = Color(0xFFD9D9D9);
  static const kDeviderColor = Color(0xFFE5E5E5);
  static const kAccountTitleColor = Color(0xFF2E2E2E);
  static const kAdminBottmBarColor = Color(0xFF2f3034);
  static const kAdminBottomBarItemColor = Color(0xFF5a5c5e);

  
  static const kBottomNavBarIconBorderColor = Color(0xFF3B846B);

  static Color kExtraColor = Colors.yellow[800];

  static TextStyle headerStyle(Color color) {
    return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w600);
  }
}

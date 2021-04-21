import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PanierPage extends StatelessWidget {
  final User user;

  const PanierPage({Key key, this.user}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Panier")
        ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ExplorerPage extends StatelessWidget {
  final User user;

  const ExplorerPage({Key key, this.user}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("explorer")
        ),
    );
  }
}

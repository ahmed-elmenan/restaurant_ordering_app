import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {
  String message;

  FailureWidget({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white24,
      child: Text(message)
    );
  }
}
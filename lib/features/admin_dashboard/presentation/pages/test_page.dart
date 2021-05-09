import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(top: 120),
      color: Colors.red,
      height: 100,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Text("data");
          }),
    );
  }
}

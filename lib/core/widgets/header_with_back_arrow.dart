import 'package:flutter/material.dart';

class HeaderWithBackArrow extends StatelessWidget {
  String title;

  HeaderWithBackArrow({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, size: 35)),
      SizedBox(width: 35),
      Text(this.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ))
    ]));
  }
}

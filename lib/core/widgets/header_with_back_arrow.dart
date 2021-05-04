import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithBackArrow extends StatelessWidget {
  String title;

  HeaderWithBackArrow({@required this.title});
  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Row(children: [
      GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset("assets/images/back_arrow.svg")),
      SizedBox(width: 35),
      Text(this.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ))
    ]));
  }
}

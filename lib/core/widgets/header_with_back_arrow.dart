import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithBackArrow extends StatelessWidget {
  String title;
  bool flag;

  HeaderWithBackArrow({@required this.title, this.flag = false});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            "assets/images/back_arrow.svg",
            color: Color(0xFF4F545D),
            height: 17,
            width: 10,
          )),
      SizedBox(width: flag ? 90 : 27),
      Text(this.title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: GlobalTheme.ktitleColor))
    ]));
  }
}

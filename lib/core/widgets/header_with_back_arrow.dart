import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithBackArrow extends StatelessWidget {
  String title;
  bool flag;
  bool toExplorer;
  User user;
  UserModel userModel;

  HeaderWithBackArrow({@required this.title, this.flag = false, this.toExplorer, this.user,  this.userModel});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      GestureDetector(
          onTap: () => this.toExplorer == false ? Navigator.pop(context) : 
          Navigator.of(context).pushAndRemoveUntil(
                        CupertinoPageRoute(
                          builder: (BuildContext context) {
                            return ExplorerPage(
                                user: this.user, userModel: this.userModel);
                          },
                        ),
                        (_) => false,
                      )
          ,
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

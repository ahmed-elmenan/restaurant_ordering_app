import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

class UserCard extends StatelessWidget {
  UserModel userModel;

  UserCard({@required this.userModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: GlobalTheme.kButtonInputBg,
            minRadius: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              this.userModel.partenariatUserName,
              style: TextStyle(
                  color: GlobalTheme.kAccountTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 6,
            ),
            Text(this.userModel.email,
                style:
                    TextStyle(color: GlobalTheme.kSecondaryText, fontSize: 13))
          ])
        ],
      ),
    );
  }
}

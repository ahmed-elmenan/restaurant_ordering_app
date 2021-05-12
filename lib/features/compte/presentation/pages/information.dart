import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/header_with_back_arrow.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/password_reset_page.dart';
import 'package:flutter_application_1/features/compte/presentation/widgets/user_info.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Information extends StatelessWidget {
  User user;
  UserModel userModel;

  Information({this.user, this.userModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
        child: ListView(
          children: [
            HeaderWithBackArrow(title: "Informations", flag: true),
            SizedBox(height: 16),
            Divider(color: GlobalTheme.kDeviderColor),
            SizedBox(height: 40),
            UserInfos(
                imageUrl: "assets/images/building.svg",
                title: this.userModel.companyName,
                imageSize: 19.79),
            SizedBox(height: 40),
            UserInfos(
                imageUrl: "assets/images/avatar_account.svg",
                title: this.userModel.partenariatUserName,
                imageSize: 17.5),
            SizedBox(height: 40),
            UserInfos(
              imageUrl: "assets/images/mail.svg",
              title: this.userModel.email,
              imageSize: 14.4,
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: Scaffold(
                      body: PasswordResetPage(
                    user: this.user,
                    userModel: this.userModel,
                  )),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: UserInfos(
                imageUrl: "assets/images/lock.svg",
                title: "Changer le mot de passe",
                flag: true,
                imageSize: 21.01,
              ),
            ),
            SizedBox(height: 40),
            UserInfos(
                imageUrl: "assets/images/phone.svg",
                title: this.userModel.mobileNumber,
                imageSize: 19.08),
          ],
        ),
      ),
    );
  }
}

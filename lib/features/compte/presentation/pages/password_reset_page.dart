import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'email_verification_page.dart';

class PasswordResetPage extends StatelessWidget {
  final User user;
  final UserModel userModel;
  TextEditingController societyNameController = TextEditingController();
  TextEditingController partenariatUsernameController = TextEditingController();
  TextEditingController emailOrPhoneController = TextEditingController();

  PasswordResetPage({@required this.user, @required this.userModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.only(top: 70, right: 30, left: 30),
        width: size.width,
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(
                        "assets/images/back_arrow.svg",
                        color: GlobalTheme.kAccountTitleColor,
                        height: 17,
                        width: 10,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width / 2,
                    child: Text(
                      "Réinitialisation du mot de passe",
                      style: GlobalTheme.headerStyle(
                              GlobalTheme.kAccountTitleColor)
                          .copyWith(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width / 2,
                    child: Text(
                      "Merci de renseigner les informations associées à votre compte et nous vous enverrons un e-mail avec des instructions pour réinitialiser votre mot de passe.",
                      style: TextStyle(
                          color: GlobalTheme.kInputHintColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      controller: societyNameController,
                      decoration: InputDecoration(
                          hintText: "Nom de société",
                          hintStyle: TextStyle(
                            color: GlobalTheme.kInputHintColor,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      controller: partenariatUsernameController,
                      decoration: InputDecoration(
                          hintText: "Identifiant de partenariat",
                          hintStyle: TextStyle(
                            color: GlobalTheme.kInputHintColor,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: TextField(
                      controller: emailOrPhoneController,
                      decoration: InputDecoration(
                          hintText: "E-mail ou numéro de telephone",
                          hintStyle: TextStyle(
                            color: GlobalTheme.kInputHintColor,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                      width: double.infinity, height: 60),
                  child: ElevatedButton(
                    child: Text(
                      "Envoyer",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      pushNewScreen(
                context,
                screen: Scaffold(
                    body: EmailVerificationPage(
                  user: this.user,
                  userModel: this.userModel,
                )),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
                      // loginBloc.add(LoginButtonPressEvent.started(
                      //     username: usernameController.text.trim(),
                      //     password: passwordController.text));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: GlobalTheme.kColorLime,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

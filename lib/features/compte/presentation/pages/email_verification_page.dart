import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/create_new_password_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class EmailVerificationPage extends StatelessWidget {
  final User user;
  final UserModel userModel;
  TextEditingController verificationCodeController = TextEditingController();

  EmailVerificationPage({Key key, this.user, this.userModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: EdgeInsets.only(top: 70, right: 30, left: 30),
        width: size.width,
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
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
                    height: 40,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      "assets/images/email_verification.svg",
                      color: GlobalTheme.kColorLime,
                      height: 100,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text("Vérifiez votre email",
                        style: TextStyle(
                            fontSize: 24,
                            color: GlobalTheme.ktitleColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // width: size.width / 2,
                    child: Text(
                      "Nous avons envoyé à votre adresse e-mail un code de vérification pour récupérer le mot de passe.",
                      textAlign: TextAlign.center,
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
                      controller: verificationCodeController,
                      decoration: InputDecoration(
                          hintText: "Code de vérification",
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
                      "Valider",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      pushNewScreen(
                        context,
                        screen: Scaffold(
                            body: CreateNewPasswordPage(
                          user: this.user,
                          userModel: this.userModel,
                        )),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                      // loginBloc.add(LoginButtonPressEvent.started(
                      // username: usernameController.text.trim(),
                      // password: passwordController.text));
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
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Vous n’avez pas reçu le code? ",
                  style: TextStyle(
                      color: GlobalTheme.kInputHintColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "Renvoyer",
                  style: TextStyle(
                      color: GlobalTheme.kColorLime,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            )
          ],
        ));
  }
}

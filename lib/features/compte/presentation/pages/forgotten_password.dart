import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/compte/presentation/blocs/forgotten_password_bloc/forgotten_password_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:string_validator/string_validator.dart';

class ForgottenPAssword extends StatefulWidget {
  UserModel userModel;

  ForgottenPAssword({@required this.userModel});

  @override
  _ForgottenPAsswordState createState() => _ForgottenPAsswordState();
}

class _ForgottenPAsswordState extends State<ForgottenPAssword> {
  ForgottenPasswordBloc forgottenPasswordBloc = ForgottenPasswordBloc();

  TextEditingController emailController = TextEditingController();

  Widget errorMessage = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => forgottenPasswordBloc,
      child: Container(
          padding: EdgeInsets.only(top: 70, right: 30, left: 30),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      "assets/images/back_arrow.svg",
                      color: GlobalTheme.kAccountTitleColor,
                      height: 17,
                      width: 10,
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: size.width / 2,
                child: Text(
                  "Réinitialisation du mot de passe",
                  style: GlobalTheme.headerStyle(GlobalTheme.kAccountTitleColor)
                      .copyWith(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlocListener<ForgottenPasswordBloc, ForgottenPasswordState>(
                listener: (context, state) {
                  Widget content;
                  state.when(initial: () {
                    content = buildInitUI();
                  }, loading: () {
                    content = Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: buildLoadingUI(),
                    );
                  }, success: () {
                    content = buildInitUI();
                    // print("ci bo");
                    _showToast(context);
                    pushNewScreen(
                      context,
                      screen: LoginPageParent(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.slideRight,
                    );
                  }, failed: () {
                    print("error forgotten pass");
                  });
                  return content;
                },
                child:
                    BlocBuilder<ForgottenPasswordBloc, ForgottenPasswordState>(
                        builder: (context, state) {
                  Widget content;
                  state.when(initial: () {
                    content = buildInitUI();
                  }, loading: () {
                    content = Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: buildLoadingUI(),
                    );
                  }, success: () {
                    content = Container();
                  }, failed: () {
                    print("error forgotten pass");
                  });
                  return content;
                }),
              ),
              errorMessage,
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Entrer l'email associé à votre compte",
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
                constraints:
                    BoxConstraints.tightFor(width: double.infinity, height: 60),
                child: ElevatedButton(
                  child: Text(
                    "Envoyer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    if (emailController.text.trim().isEmpty) {
                      print("empty");
                      setState(() {
                        errorMessage = Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(
                              child: Text(
                            "Quelque champ est vide",
                            style: TextStyle(color: Colors.red),
                          )),
                        );
                      });
                    } else if (isEmail(emailController.text) == false) {
                      print("not email");
                      setState(() {
                        errorMessage = Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(
                              child: Text(
                            "Entrez un email valide",
                            style: TextStyle(color: Colors.red),
                          )),
                        );
                      });
                    } else {
                      setState(() {
                        errorMessage = SizedBox(height: 20);
                      });
                      forgottenPasswordBloc.add(
                          ForgottenPasswordEvent.pressSendButton(
                              emailController.text.trim()));
                    }
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
          )),
    );
  }

  Widget buildInitUI() {
    return Container(
      // width: size.width / 2,
      child: Text(
        "Nous avons envoyé à votre adresse e-mail un lien pour changer votre mot de passe.",
        textAlign: TextAlign.center,
        style: TextStyle(color: GlobalTheme.kInputHintColor, fontSize: 16),
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text(
          'E-mail envoyé avec success, prière de verifier votre boite de reçeption',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: GlobalTheme.kColorLime,
      ),
    );
  }
}

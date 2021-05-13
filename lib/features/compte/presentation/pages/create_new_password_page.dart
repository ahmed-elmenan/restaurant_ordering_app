import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/compte/presentation/blocs/update_user_password_bloc/update_user_password_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CreateNewPasswordPage extends StatefulWidget {
  final User user;
  final UserModel userModel;

  CreateNewPasswordPage({@required this.user, @required this.userModel});

  @override
  _CreateNewPasswordPageState createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmNewPasswordController = TextEditingController();

  Widget errorMessage = SizedBox(height: 20);

  UpdateUserPasswordBloc updateUserPasswordBloc = UpdateUserPasswordBloc();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // user.updatePassword(newPassword)
    return BlocProvider(
      create: (context) => updateUserPasswordBloc,
      child: Container(
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
                      height: 20,
                    ),
                    Container(
                      width: size.width / 2,
                      child: Text(
                        "Créer un nouveau mot de passe",
                        style: GlobalTheme.headerStyle(
                                GlobalTheme.kAccountTitleColor)
                            .copyWith(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BlocListener<UpdateUserPasswordBloc,
                        UpdateUserPasswordState>(
                      listener: (context, state) {
                        Widget content;
                        state.when(initial: () {
                          content = buildInitUi(size);
                        }, updatePasswordLoading: () {
                          content = Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: buildLoadingUI(),
                          );
                        }, updatePasswordSuccess: () {
                          content = Container();
                          pushNewScreen(
                            context,
                            screen: LoginPageParent(),
                            withNavBar:
                                false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.slideRight,
                          );
                        }, updatePasswordFailed: () {
                          content = Container();
                          print('pw update failed');
                        });
                        return content;
                      },
                      child: BlocBuilder<UpdateUserPasswordBloc,
                          UpdateUserPasswordState>(builder: (context, state) {
                        Widget content;
                        state.when(initial: () {
                          content = buildInitUi(size);
                        }, updatePasswordLoading: () {
                          content = Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: buildLoadingUI(),
                          );
                        }, updatePasswordSuccess: () {
                          content = Container();
                        }, updatePasswordFailed: () {
                          content = Container();
                          print('pw update failed');
                        });
                        return content;
                      }),
                    )
                  ],
                ),
              ),
              errorMessage,
              Column(
                children: [
                  Form(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextField(
                        obscureText: true,
                        controller: newPasswordController,
                        decoration: InputDecoration(
                            hintText: "Entrer un nouveau mot de passe",
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
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: TextField(
                        obscureText: true,
                        controller: confirmNewPasswordController,
                        decoration: InputDecoration(
                            hintText: "Confirmer le nouveau mot de passe",
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
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        if (newPasswordController.text.isEmpty ||
                            confirmNewPasswordController.text.isEmpty)
                          setState(() {
                            errorMessage = Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Center(
                                child: Text('Champs est vide',
                                    style: TextStyle(color: Colors.red)),
                              ),
                            );
                          });
                        else if (newPasswordController.text.length < 6) {
                          setState(() {
                            errorMessage = Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Center(
                                child: Text(
                                    'le mot de passe doit contenir 6 charactrère au minimum',
                                    style: TextStyle(color: Colors.red)),
                              ),
                            );
                          });
                        } else if (newPasswordController.text !=
                            confirmNewPasswordController.text) {
                          setState(() {
                            errorMessage = Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Center(
                                child: Text(
                                    'les mots de passe ne sont pas similaire',
                                    style: TextStyle(color: Colors.red)),
                              ),
                            );
                          });
                        } else {
                          updateUserPasswordBloc.add(UpdateUserPasswordEvent
                              .updatePasswordButtonPressed(
                                  widget.user, newPasswordController.text));
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
              )
            ],
          )),
    );
  }

  Widget buildInitUi(Size size) {
    return Container(
      width: size.width / 2,
      child: Text(
        "Votre nouveau mot de passe doit être différent des mots de passe précédemment utilisés.",
        style: TextStyle(color: GlobalTheme.kInputHintColor, fontSize: 16),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/brand.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main.dart';

class LoginPageParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => LoginBloc(), child: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginBloc loginBloc;

  MainAxisAlignment alignment = MainAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    loginBloc = BlocProvider.of<LoginBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              Widget content;
              state.when(initial: () {
                print("login button init");
              }, success: (user, userModel) {
                navigateToExplorerPage(context, user);
              }, loading: () {
                print("login button loading");
              }, failure: (message) {
                content = buildFailureUI(message);
              });
              return Container();
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                Widget content;
                state.when(initial: () {
                  content = buildInitialUI();
                }, loading: () {
                  content = buildLoadingUI();
                }, success: (user, userModel) {
                  content = Container();
                }, failure: (message) {
                  content = buildFailureUI(message);
                });
                return content;
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    hintText: "Identifiant de partenariat",
                    filled: true,
                    fillColor: GlobalTheme.kButtonInputBg,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0))),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Mot de passe",
                    filled: true,
                    fillColor: GlobalTheme.kButtonInputBg,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ConstrainedBox(
              constraints:
                  BoxConstraints.tightFor(width: double.infinity, height: 55),
              child: ElevatedButton(
                child: Text("Connexion"),
                onPressed: () async {
                  loginBloc.add(LoginButtonPressEvent.started(
                      username: usernameController.text,
                      password: passwordController.text));
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
          ),
          // GestureDetector(
          //   onTap: () => Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => ForgottenPasswordPage())),
          //   child: Text("mot de pass oublié"),
          // )
        ],
      ),
    );
  }

  Widget buildInitialUI() {
    return brandWidget();
  }

  Widget buildFailureUI(String message) {
    return Text(message, style: TextStyle(color: Colors.red));
  }

  Widget navigateToExplorerPage(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AppBottomNavBar(user: user);
    }));
  }
}

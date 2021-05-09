import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/brand.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/admin_bottom_app_bar.dart';
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
      body: ListView(
        children: [
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              Widget content;
              state.when(initial: () {
                print("login button init");
              }, success: (user, userModel) {
                if (userModel.status == 'regular')
                  navigateToExplorerPage(context, user);
                else if (userModel.status == 'admin')
                  navigateToAdminDashBoardPage(context, user);

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
                  content = Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: buildLoadingUI(),
                  );
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
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      hintText: "Identifiant de partenariat",
                      hintStyle: TextStyle(
                        color: Color(0xFF979BA3),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 17),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Mot de passe",
                    hintStyle: TextStyle(
                      color: Color(0xFF979BA3),
                    ),
                    // filled: true,
                    border: InputBorder.none,
                  ),
                ),
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
                  BoxConstraints.tightFor(width: double.infinity, height: 60),
              child: ElevatedButton(
                child: Text(
                  "Connexion",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
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
          SizedBox(height: 30),
          GestureDetector(
            // onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => ForgottenPasswordPage())),
            child: Text("Mot de pass oublié?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFF979BA3))),
          )
        ],
      ),
    );
  }

  Widget buildInitialUI() {
    return brandWidget();
  }

  Widget buildFailureUI(String message) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Text("Identifiant ou mot de passe incorrecte",
          textAlign: TextAlign.center, style: TextStyle(color: Colors.red)),
    );
  }

  Widget navigateToExplorerPage(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AppBottomNavBar(user: user);
    }));
  }

  Widget navigateToAdminDashBoardPage(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AdminBottomNavBar(user: user);
    }));
  }
}

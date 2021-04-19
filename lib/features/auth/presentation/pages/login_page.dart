import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPageParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => LoginBloc(), child: LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginBloc loginBloc;
  @override
  Widget build(BuildContext context) {
    loginBloc = BlocProvider.of<LoginBloc>(context);

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: size.height / 4),
          BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              Widget content;
              state.when(initial: () {
                print("login button init");
              }, success: (user) {
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
                }, success: (user) {
                  content = Container();
                }, failure: (message) {
                  content = buildFailureUI(message);
                });

                return content;
              },
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 140),
              color: GlobalTheme.kColorLime,
              height: 100,
              child: Center(child: Icon(Icons.train_rounded)),
            ),
          ),
          Text(
            "Comeco",
            style: TextStyle(fontSize: 29, color: GlobalTheme.kColorLime),
          ),
          Text("- Dilevery -",
              style: TextStyle(fontSize: 14, color: GlobalTheme.kColorLime)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              child: TextField(
                controller: emailController,
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
                      email: emailController.text,
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
          )
        ],
      ),
    );
  }

  Widget buildInitialUI() {
    return Text("Waiting for user reg");
  }

  Widget buildLoadingUI() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildFailureUI(String message) {
    return Text(message, style: TextStyle(color: Colors.red));
  }

  Widget navigateToExplorerPage(BuildContext context, User user) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ExplorerPage(user: user);
    }));
  }
}

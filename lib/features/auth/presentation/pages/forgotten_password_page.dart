import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

class ForgottenPasswordPage extends StatefulWidget {
  ForgottenPasswordPage({Key key}) : super(key: key);

  @override
  _ForgottenPasswordPageState createState() => _ForgottenPasswordPageState();
}

class _ForgottenPasswordPageState extends State<ForgottenPasswordPage> {
    TextEditingController usernameController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              child: TextField(
                controller: usernameController,
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
                  // loginBloc.add(LoginButtonPressEvent.started(
                  //     email: emailController.text + "@coemco.com",
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
          ),
        ]),
      ),
    );
  }
}

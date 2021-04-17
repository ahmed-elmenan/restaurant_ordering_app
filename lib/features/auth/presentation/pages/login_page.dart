import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: size.height / 4),
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
            child: TextFormField(
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
            child: TextFormField(
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
              onPressed: () => print("it's pressed"),
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
    );
  }
}

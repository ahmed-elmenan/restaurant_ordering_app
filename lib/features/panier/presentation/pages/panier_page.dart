import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';

class PanierPage extends StatelessWidget {
  final User user;

  const PanierPage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/images/panier.svg",
              color: GlobalTheme.kColorLime,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Text("VotrePanier est vide",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ConstrainedBox(
              constraints:
                  BoxConstraints.tightFor(width: double.infinity, height: 55),
              child: ElevatedButton(
                child: Text("Ajouter un article"),
                onPressed: () {},
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
        ],
      ),
    ));
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PanierPage extends StatelessWidget {
  final User user;
  PersistentTabController controller;
  VoidCallback chnageExplorerState;

  PanierPage({Key key, this.user, this.controller, this.chnageExplorerState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/images/thepanier.svg",
              color: GlobalTheme.kColorLime,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Text("Votre panier est vide",
              style: TextStyle(
                  fontSize: 24,
                  color: GlobalTheme.ktitleColor,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Il n'y a aucun article danse votre panier",
              style: TextStyle(
                  fontSize: 16,
                  color: GlobalTheme.kSecondaryText,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 300, height: 55),
              child: ElevatedButton(
                child: Text(
                  "Ajouter des articles",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  this.chnageExplorerState();
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
        ],
      ),
    ));
  }
}

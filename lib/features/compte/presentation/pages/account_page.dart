import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/compte/presentation/blocs/signout_bloc/account_bloc.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/information.dart';
import 'package:flutter_application_1/features/compte/presentation/widgets/info_row.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/orders_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AccountPageParent extends StatelessWidget {
  User user;
  UserModel userModel;

  AccountPageParent({this.user, this.userModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc(),
      child: AccountPage(user: user, userModel: userModel),
    );
  }
}

class AccountPage extends StatelessWidget {
  User user;
  UserModel userModel;
  AccountBloc accountBloc;

  AccountPage({this.user, this.userModel});

  @override
  Widget build(BuildContext context) {
    
    accountBloc = BlocProvider.of<AccountBloc>(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, right: 30, left: 30),
        // color: Colors.blueAccent,
        child: ListView(children: [
          BlocListener<AccountBloc, AccountState>(
            listener: (context, state) {
              Widget content;
              state.when(logOutSuccess: () {
                content = Container();
                navigateToSignInPage(context);
              }, logOutInitial: () {
                content = buildInitialUI();
              }, logOutLoading: () {
                Center(child: buildLoadingUI());
              });
              return content;
            },
            child: BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) {
              Widget content;
              state.when(logOutSuccess: () {
                content = Container();
              }, logOutInitial: () {
                content = buildInitialUI();
              }, logOutLoading: () {
                content = Center(child: buildLoadingUI());
              });
              return content;
            }),
          ),
          SizedBox(height: 16),
          Divider(color: GlobalTheme.kDeviderColor),
          SizedBox(height: 20),
          InfoRow(
            imageUrl: "assets/images/favorie.svg",
            title: "Favoris",
            imageSize: 14.56,
          ),
          SizedBox(height: 19),
          GestureDetector(
            onTap: () {
              pushNewScreen(
                context,
                screen: Scaffold(
                    body: OrdersPage(
                  user: this.user,
                  userModel: this.userModel,
                )),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: InfoRow(
              imageUrl: "assets/images/orders.svg",
              title: "Commandes",
              imageSize: 20.13,
            ),
          ),
          SizedBox(height: 19),
          GestureDetector(
            onTap: () {
              pushNewScreen(
                context,
                screen: Information(userModel: this.userModel, user: this.user),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: InfoRow(
              imageUrl: "assets/images/info.svg",
              title: "Informations personnelles",
              imageSize: 16.74,
            ),
          ),
          SizedBox(height: 20),
          Divider(color: GlobalTheme.kDeviderColor),
          SizedBox(height: 20),
          InfoRow(
            imageUrl: "assets/images/settings.svg",
            title: "Paramètres",
            imageSize: 17.16,
          ),
          SizedBox(height: 19),
          InfoRow(
            imageUrl: "assets/images/parrainage.svg",
            title: "Parrainage",
            imageSize: 15.42,
          ),
          SizedBox(height: 19),
          InfoRow(
            imageUrl: "assets/images/faq.svg",
            title: "F.A.Q",
            imageSize: 16.74,
          ),
          SizedBox(height: 19),
          InfoRow(
            imageUrl: "assets/images/support.svg",
            title: "Support",
            imageSize: 14.46,
          ),
          SizedBox(height: 19),
          InfoRow(
              imageUrl: "assets/images/panier.svg",
              title: "A propos",
              imageSize: 16.74,
              flag: true),
          SizedBox(height: 19),
          GestureDetector(
            onTap: () {
              accountBloc.add(AccountEvent.logOutButtonPressedEvent());
            },
            child: InfoRow(
              imageUrl: "assets/images/deconnexion.svg",
              title: "Déconnexion",
              imageSize: 15.54,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 27),
              child: Text(
                "Version 1.0.0",
                textAlign: TextAlign.right,
                style: TextStyle(color: GlobalTheme.kSecondaryText),
              ))
        ]),
      ),
    );
  }

  //     // accountBloc.add(LogOutButtonPressedEvent());

  void navigateToSignInPage(BuildContext context) {
    pushNewScreen(context,
        screen: WillPopScope(
          onWillPop: () async => false,
          child: LoginPageParent()),
        withNavBar: false, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.slideRight);
  }

  Widget buildInitialUI() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: GlobalTheme.kButtonInputBg,
          minRadius: 50,
        ),
        SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            this.userModel.partenariatUserName,
            style: TextStyle(
                color: GlobalTheme.kAccountTitleColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 6,
          ),
          Text(this.userModel.email,
              style: TextStyle(color: GlobalTheme.kSecondaryText, fontSize: 13))
        ])
      ],
    );
  }
}

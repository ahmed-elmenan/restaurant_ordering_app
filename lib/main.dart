import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/brand.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/orders_page.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/account_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_application_1/features/panier/presentation/pages/panier_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router.dart';
import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Init(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
    );
  }
}

class Init extends StatelessWidget {
  AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthEvent.started()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          Widget content;
          state.when(initial: () {
            print("init");
            content = SplashScreen();
          }, authenticatedState: (user) {
            print("Loading...");
            content = AppBottomNavBar(user: user);
          }, unauthenticatedState: () {
            content = LoginPageParent();
            // content = OrderForm();
          });
          return content;
        },
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: brandWidget(),
    );
  }
}

class AppBottomNavBar extends StatefulWidget {
  final User user;

  AppBottomNavBar({@required this.user});
  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    User firebaseAuthUser = widget.user;
    final List<Widget> _children = [
      ExplorerPage(user: firebaseAuthUser),
      OrdersPage(user: firebaseAuthUser),
      PanierPage(),
      AccountPageParent(user: firebaseAuthUser)
    ];

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: GlobalTheme.kColorLime,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color: GlobalTheme.kBottomNavBarIconBorderColor))),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onTappedBar,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: selectedIconColor(0), size: 29),
                title: Text("Explorer", style: textStyle(0)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book, color: selectedIconColor(1), size: 29),
                title: Text("Commandes", style: textStyle(1)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_sharp,
                    color: selectedIconColor(2), size: 29),
                title: Text("Panier", style: textStyle(2)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle,
                    color: selectedIconColor(3), size: 29),
                title: Text("Compte", style: textStyle(3)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Color selectedIconColor(int index) {
    return (_currentIndex == index)
        ? Colors.white
        : GlobalTheme.kBottomNavBarIconBorderColor;
  }

  Color selectedTextStyle(int index) {
    return (_currentIndex == index)
        ? Colors.white
        : GlobalTheme.kBottomNavBarIconBorderColor;
  }

  TextStyle textStyle(int index) {
    return TextStyle(
        color: selectedTextStyle(index),
        fontSize: 14,
        fontWeight: FontWeight.w500);
  }
}

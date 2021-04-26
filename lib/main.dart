import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/brand.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/orders_page.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/account_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_application_1/features/panier/presentation/pages/panier_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

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
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    User firebaseAuthUser = widget.user;
    List<Widget> _buildScreens() {
      return [
        ExplorerPage(user: firebaseAuthUser),
        OrdersPage(user: firebaseAuthUser),
        PanierPage(),
        AccountPageParent(user: firebaseAuthUser)
      ];
    }

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: GlobalTheme.kColorLime,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarHeight: 100,
        padding: NavBarPadding.symmetric(vertical: 25),
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        iconSize: 35,
        title: "Explorer",
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.bookmark_fill),
        iconSize: 35,
        title: ("Commandes"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.bag_fill),
        iconSize: 35,
        title: ("Panier"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person_fill),
        iconSize: 35,
        title: ("Compte"),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
      ),
    ];
  }
}

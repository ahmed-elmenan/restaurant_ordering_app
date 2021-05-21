import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/orders_page.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/account_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_application_1/features/panier/presentation/pages/panier_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'features/admin_dashboard/presentation/pages/admin_bottom_app_bar.dart';
import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash());
        } else {
          // Loading is done, return the app:
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'roboto_regular'),
            home: Init(),
            routes: {
              // When navigating to the "/" route, build the FirstScreen widget.
              '/first': (context) => ExplorerPage(
                    user: null,
                    userModel: null,
                  ),
              // When navigating to the "/second" route, build the SecondScreen widget.
            },
          );
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalTheme.kColorLime,
      body: Center(
        child: Image.asset("assets/images/coemco_logo.png",
            height: 200, width: 200),
      ),
    );
  }
}

class Init extends StatelessWidget {
  AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    print("barééééééééé");
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthEvent.started()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          Widget content;
          state.when(initial: () {
            print("init");
            content = Container();
          }, authenticatedState: (user, userModel) {
            print("Loading...");
            if (userModel.status == 'regular')
              content = AppBottomNavBar(user: user, userModel: userModel);
            else if (userModel.status == 'admin')
              content = AdminBottomNavBar(user: user);
          }, unauthenticatedState: () {
            content = LoginPageParent();
          });
          return content;
        },
      ),
    );
  }
}

class AppBottomNavBar extends StatefulWidget {
  final User user;
  UserModel userModel;

  AppBottomNavBar({@required this.user, @required this.userModel});
  @override
  _AppBottomNavBarState createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int _currentIndex = 0;
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  bool flag = false;

  chnageExplorerState() {
    setState(() {
      _controller.jumpToTab(0);
      _currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    User firebaseAuthUser = widget.user;
    List<Widget> _buildScreens() {
      return [
        ExplorerPage(user: widget.user, userModel: widget.userModel),
        OrdersPage(user: firebaseAuthUser, userModel: widget.userModel),
        PanierPage(
          controller: _controller,
          chnageExplorerState: () => chnageExplorerState(),
        ),
        AccountPageParent(user: firebaseAuthUser, userModel: widget.userModel)
      ];
    }

    return Scaffold(
        body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: false,
      backgroundColor: GlobalTheme.kColorLime,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      onItemSelected: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      padding: NavBarPadding.only(bottom: 32),
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      navBarHeight: 100,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style6,
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: false,
      ),
    ));
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/home.svg",
                height: 20.51,
                color: _currentIndex == 0
                    ? Colors.white
                    : GlobalTheme.kBottomNavBarIconBorderColor),
            SizedBox(height: 8),
            Text(
              "Explorer",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 0
                    ? Colors.white
                    : GlobalTheme.kBottomNavBarIconBorderColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => ExplorerPage(user: null, userModel: null),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/orders.svg",
              height: 24.61,
              color: _currentIndex == 1
                  ? Colors.white
                  : GlobalTheme.kBottomNavBarIconBorderColor,
            ),
            SizedBox(height: 8),
            Text(
              "Commandes",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 1
                    ? Colors.white
                    : GlobalTheme.kBottomNavBarIconBorderColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => ExplorerPage(user: null, userModel: null),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/paniers.svg",
              height: 24.3,
              color: _currentIndex == 2
                  ? Colors.white
                  : GlobalTheme.kBottomNavBarIconBorderColor,
            ),
            SizedBox(height: 8),
            Text(
              "Panier",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 2
                    ? Colors.white
                    : GlobalTheme.kBottomNavBarIconBorderColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => ExplorerPage(user: null, userModel: null),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/avatar_account.svg",
              height: 21.38,
              color: _currentIndex == 3
                  ? Colors.white
                  : GlobalTheme.kBottomNavBarIconBorderColor,
            ),
            SizedBox(height: 8),
            Text(
              "Compte",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 3
                    ? Colors.white
                    : GlobalTheme.kBottomNavBarIconBorderColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kBottomNavBarIconBorderColor,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {
            '/first': (context) => ExplorerPage(user: null, userModel: null),
          },
        ),
      ),
    ];
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/admin_dashboard.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/admin_dashboard.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class AdminBottomNavBar extends StatefulWidget {
  final User user;

  AdminBottomNavBar({@required this.user});
  @override
  _AdminBottomNavBarState createState() => _AdminBottomNavBarState();
}

class _AdminBottomNavBarState extends State<AdminBottomNavBar> {
  int _currentIndex = 0;
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        AdminDashBoardOrders(user: widget.user),
        Container(color: Colors.lightBlue),
        Container(color: Colors.lightGreenAccent),
      ];
    }

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: false,
        backgroundColor: GlobalTheme.kAdminBottmBarColor,
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
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/orders.svg",
                height: 20.51,
                color: _currentIndex == 0
                    ? Colors.white
                    : GlobalTheme.kAdminBottomBarItemColor),
            SizedBox(height: 8),
            Text(
              "Commandes",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 0
                    ? Colors.white
                    : GlobalTheme.kAdminBottomBarItemColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kAdminBottomBarItemColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/home.svg",
              height: 24.61,
              color: _currentIndex == 1
                  ? Colors.white
                  : GlobalTheme.kAdminBottomBarItemColor,
            ),
            SizedBox(height: 8),
            Text(
              "Produits",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 1
                    ? Colors.white
                    : GlobalTheme.kAdminBottomBarItemColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kAdminBottomBarItemColor,
      ),
      PersistentBottomNavBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/avatar_account.svg",
              height: 24.3,
              color: _currentIndex == 2
                  ? Colors.white
                  : GlobalTheme.kAdminBottomBarItemColor,
            ),
            SizedBox(height: 8),
            Text(
              "Utilisateurs",
              style: TextStyle(
                fontSize: 11,
                color: _currentIndex == 2
                    ? Colors.white
                    : GlobalTheme.kAdminBottomBarItemColor,
              ),
            )
          ],
        ),
        activeColorPrimary: CupertinoColors.white,
        inactiveColorPrimary: GlobalTheme.kAdminBottomBarItemColor,
      ),
    ];
  }
}

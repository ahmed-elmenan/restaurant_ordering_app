import 'package:flutter_application_1/features/orders/presentation/pages/orders_page.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/account_page.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/explorer_page.dart';
import 'package:flutter_application_1/features/panier/presentation/pages/panier_page.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
          name: '/explorer',
          builder: (context, args, params) {
            return ExplorerPage();
          }),
      SailorRoute(
          name: '/account',
          builder: (context, args, params) {
            return AccountPage();
          }),
      SailorRoute(
          name: '/commandes',
          builder: (context, args, params) {
            return OrdersPage();
          }),
      SailorRoute(
          name: '/panier',
          builder: (context, args, params) {
            return PanierPage();
          }),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/add_product_page.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/widgets/product_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:uuid/uuid.dart';

class ProductManipulatioPAge extends StatefulWidget {
  @override
  _ProductManipulatioPAgeState createState() => _ProductManipulatioPAgeState();
}

class _ProductManipulatioPAgeState extends State<ProductManipulatioPAge> {
  List<ProductModel> productList = [];

  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  AddProductBloc addProductBloc;

  @override
  void initState() {
    super.initState();

    addProductBloc = AddProductBloc();
  }

  @override
  Widget build(BuildContext context) {
    print("=========================================>kmokh");
    setState(() {});
    return BlocProvider(
      create: (context) => addProductBloc,
      child: Scaffold(
          key: _scaffoldKey,
          body: Padding(
              padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
              child: Column(children: [
                Center(
                  child: Text("Liste des produits",
                      style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
                ),
                SizedBox(height: 10),
                ProductCard(),
                SizedBox(height: 10),
              ])),
          floatingActionButton: new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.add),
              backgroundColor: GlobalTheme.kAdminBottmBarColor,
              onPressed: () {
                pushNewScreen(
                  context,
                  screen: AddProductForms(),
                  withNavBar: true, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              })),
    );
  }
}

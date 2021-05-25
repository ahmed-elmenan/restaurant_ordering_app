import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/get_products_bloc/get_products_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/pages/add_product_page.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/widgets/product_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductManipulatioPAge extends StatefulWidget {
  @override
  _ProductManipulatioPAgeState createState() => _ProductManipulatioPAgeState();
}

class _ProductManipulatioPAgeState extends State<ProductManipulatioPAge> {
  // List<ProductModel> productList = [];

  // var _scaffoldKey = new GlobalKey<ScaffoldState>();

  GetProductsBloc getProductsBloc;

  @override
  void initState() {
    super.initState();
    getProductsBloc = GetProductsBloc();
    getProductsBloc.add(GetProductsEvent.fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    print("=========================================>kmokh");
    return BlocProvider(
      create: (context) => getProductsBloc,
      child: Scaffold(
          // key: _scaffoldKey,
          body: Padding(
              padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
              child: ListView(children: [
                Center(
                  child: Text("Liste des produits",
                      style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
                ),
                SizedBox(height: 10),
                BlocBuilder<GetProductsBloc, GetProductsState>(
                    builder: (context, state) {
                  Widget content;
                  state.when(initial: () {
                    print('get products init');
                    content = Container();
                  }, getProductsLoading: () {
                    content = Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: buildLoadingUI(),
                    );
                  }, getProductsSuccess: (productList) {
                    content = ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                              key: new Key(productList[index].toString()),
                              onDismissed: (d) {
                                productList.removeAt(index);
                              },
                              child: ProductCard(
                                  productModel: productList[index]));
                        });
                    print("get products success");
                  }, getProductsFailed: () {
                    print("get products failed");
                    content = Container();
                  });
                  return content;
                }),
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

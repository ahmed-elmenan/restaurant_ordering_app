import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/get_products_bloc/get_products_bloc.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/ramadan_plats.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/product_big_card.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/product_small_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ExplorerPage extends StatefulWidget {
  UserModel userModel;
  final User user;

  ExplorerPage({Key key, this.user, @required this.userModel})
      : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  String routeName = '/first';

  GetProductsBloc getProductsBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductsBloc = GetProductsBloc();
    getProductsBloc.add(GetProductsEvent.fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int productIndex = -2;
    List<ProductStatic> headerProductList = [
      ProductStatic(
          name: "panini",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "panini",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "panini",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "panini",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg")
    ];
    List<ProductStatic> promosProductList = [
      ProductStatic(
          name: "tacos",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "chawarma",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "panini",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "ciabatas",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "pizza",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
      ProductStatic(
          name: "lazania",
          description: "test 1 2 test 3",
          price: "30 dhs",
          imageLink: "assets/images/bastilla.jpg"),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: GlobalTheme.kColorLime,
          shadowColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(top: 40, right: 16, left: 16),
            height: 90,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/images/filter.svg",
                  height: 16.09,
                  color: Colors.white,
                ),
                Text("Coemco Food",
                    style: GlobalTheme.headerStyle(Colors.white)),
                SvgPicture.asset(
                  "assets/images/search.svg",
                  color: Colors.white,
                  height: 16.09,
                ),
              ],
            ),
          ),
        ),
      ),
      body: BlocProvider(
          create: (context) => getProductsBloc,
          child: BlocBuilder<GetProductsBloc, GetProductsState>(
              builder: (context, state) {
            Widget content;
            state.when(initial: () {
              print('get products init');
              content = SizedBox();
            }, getProductsLoading: () {
              content = Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: buildLoadingUI(),
              );
            }, getProductsSuccess: (productList) {
              content = ListView(
                children: <Widget>[
                  Stack(children: [
                    Container(
                      width: double.infinity,
                      height: size.height / 2 - 120,
                    ),
                    Container(
                      width: double.infinity,
                      height: size.height / 3 - 150,
                      color: GlobalTheme.kColorLime,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Plats du Ramadan",
                                  style: GlobalTheme.headerStyle(Colors.white)),
                              GestureDetector(
                                onTap: () {
                                  pushNewScreen(
                                    context,
                                    screen: RamadanPlatsPage(
                                        userModel: this.widget.userModel,
                                        user: this.widget.user,
                                        headerProductList: productList),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                                child: Text("Affichier tous (25)",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      width: size.width,
                      child: Container(
                        height: 200,
                        child: CarouselSlider(
                          items: productList.map((e) {
                            return Builder(builder: (BuildContext context) {
                              return ProductBigCard(
                                product: e,
                                user: this.widget.user,
                                userModel: this.widget.userModel,
                              );
                            });
                          }).toList(),
                          options: CarouselOptions(
                            autoPlay: true,
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 5),
                    child: Text("Promos of the month",
                        style:
                            GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: ListView.builder(
                        itemCount: productList.length % 2 == 0
                            ? productList.length ~/ 2
                            : productList.length ~/ 2 + 1,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, i) {
                          productIndex += 2;
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProductSmallCard(
                                      userModel: this.widget.userModel,
                                      user: this.widget.user,
                                      productModel: productList[productIndex]),
                                  if (productIndex + 1 < productList.length)
                                    ProductSmallCard(
                                        userModel: this.widget.userModel,
                                        user: this.widget.user,
                                        productModel:
                                            productList[productIndex + 1]),
                                ],
                              ),
                              SizedBox(height: 20)
                            ],
                          );
                        }),
                  )
                ],
              );
              print("get products success");
            }, getProductsFailed: () {
              print("get products failed");
              content = Container();
            });
            return content;
          })),
    );
  }
}

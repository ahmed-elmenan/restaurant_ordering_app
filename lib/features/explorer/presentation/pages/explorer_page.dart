import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/product_big_card.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/product_small_card.dart';

class ExplorerPage extends StatelessWidget {
  final User user;

  const ExplorerPage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int productIndex = -2;
    List<ProductStatic> headerProductList = [
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
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Stack(children: [
            Container(
              width: double.infinity,
              height: size.height / 2 - 30,
            ),
            Container(
              width: double.infinity,
              height: size.height / 3 - 55,
              color: GlobalTheme.kColorLime,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.settings, color: Colors.white),
                        Text("Coemco Food",
                            style: GlobalTheme.headerStyle(Colors.white)
                                .copyWith(fontSize: 24)),
                        Icon(Icons.search, color: Colors.white),
                      ]),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Plats du Ramadan",
                          style: GlobalTheme.headerStyle(Colors.white)),
                      Text("Affichier tous (25)",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
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
                  items: headerProductList.map((e) {
                    return Builder(builder: (BuildContext context) {
                      return ProductBigCard(
                        product: e,
                        user: this.user,
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
            child: Text("Les promotions du mois",
                style: GlobalTheme.headerStyle(Colors.grey[800])),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
                itemCount: promosProductList.length % 2 == 0
                    ? promosProductList.length ~/ 2
                    : promosProductList.length ~/ 2 + 1,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, i) {
                  productIndex += 2;
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductSmallCard(
                              user: this.user,
                              promosProduct: promosProductList[productIndex]),
                          if (productIndex + 1 < promosProductList.length)
                            ProductSmallCard(
                                user: this.user,
                                promosProduct:
                                    promosProductList[productIndex + 1]),
                        ],
                      ),
                      SizedBox(height: 20)
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

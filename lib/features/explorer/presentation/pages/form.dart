import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/constants/products_prices.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/utils/calculate_total.dart';
import 'package:flutter_application_1/core/widgets/dark_layout.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/bloc/add_order_bloc.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/ProductOptions.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/orders_add_placeholder.dart';
import 'package:flutter_application_1/features/orders/data/repositories/order_repository.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderForm extends StatefulWidget {
  ProductStatic product;
  User user;

  OrderForm({@required this.user, @required this.product});

  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  bool isFavorite = false;
  Icon favoriteIcon =
      Icon(Icons.favorite_border, color: Colors.white, size: 35);
  OrderModel order = OrderModel();

  @override
  void initState() {
    var uuid = Uuid();
    order.orderCode = uuid.v4().split('-')[0];
    order.id = widget.user.uid;
    order.userId = widget.user.uid;
    order.name = widget.product.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/past.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
            DarkLayout(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back,
                          color: Colors.white, size: 35)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isFavorite == false) {
                          favoriteIcon = Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 35,
                          );
                          isFavorite = true;
                        } else {
                          favoriteIcon = Icon(Icons.favorite_border,
                              color: Colors.white, size: 35);
                          isFavorite = false;
                        }
                      });
                    },
                    child: favoriteIcon,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 1,
              child: Container(
                padding: EdgeInsets.only(top: 13),
                width: size.width,
                height: size.height - 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    Text(
                      "Formule Complète",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Soupe + Boisson chaude + Boisson Froide + Extra + Viennoiserie + Beldi + Salé + Plat garni",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ProductOptions(
                        options: entreeChaude,
                        title: "ENTREE CHAUDE",
                        order: this.order),
                    ProductOptions(
                        options: boissonFroide,
                        title: "BOISSON FROIDE",
                        order: this.order),
                    ProductOptions(
                        options: boissonChaude,
                        title: "BOISSON CHAUDE",
                        order: this.order),
                    ProductOptions(
                        options: sale, title: "SALE", order: this.order),
                    ProductOptions(
                        options: platGarni,
                        title: "PLAT GARNI",
                        order: this.order),
                    ProductOptions(
                        options: viennoiserie,
                        title: "VIENNOISERIE",
                        order: this.order),
                    ProductOptions(
                        options: completeFormExtra,
                        title: "EXTRA",
                        order: this.order),
                    GestureDetector(
                        onTap: () async {
                          // OrderRepository orderRep = OrderRepository();

                          // await orderRep.addOrder(order);
                          // order.orderForm["EXTRA"].forEach((item) {
                          //   print("xx extra = $item xx");
                          // });

                          // print("DONEEEE = " +

                          //         .toString());
                        },
                        child: OrderAddPlaceHolder(
                          order: order,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  onTap: () {
//                           print(
//                               ">>>>>>>>>>>>>>>>><<<<<<<<<<<<<>>>> ${order.orderForm["ENTREE CHAUDE"]}");
//                           print(
//                               ">>>>>>>>>>>>>>>>><<<<<<<<<<<<<>>>> ${order.orderForm["BOISSON FROIDE"]}");
//                           print(
//                               ">>>>>>>>>>>>>>>>><<<<<<<<<<<<<>>>> ${order.orderForm["BOISSON CHAUDE"]}");
//                           print(
//                               ">>>>>>>>>>>>>>>>><<<<<<<<<<<<<>>>> ${order.orderForm["SALE"]}");
//                           print(
//                               ">>>>>>>>>>>>>>>>><<<<<<<<<<<<<>>>> ${order.orderForm["VIENNOISERIE"]}");

//                           order.orderForm["EXTRA"].forEach((item) {
//                             print("xx extra = $item xx");
//                           });
//                         },

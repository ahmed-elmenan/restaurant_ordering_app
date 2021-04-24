import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/widgets/dark_layout.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/ProductOptions.dart';
import 'package:flutter_application_1/features/explorer/presentation/widgets/orders_add_placeholder.dart';

class OrderForm extends StatefulWidget {
  @override
  _OrderFormState createState() => _OrderFormState();
}

class _OrderFormState extends State<OrderForm> {
  bool isFavorite = false;
  Icon favoriteIcon =
      Icon(Icons.favorite_border, color: Colors.white, size: 35);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        color: Colors.black,
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
                  Icon(Icons.arrow_back, color: Colors.white, size: 35),
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
              bottom: 2,
              child: Container(
                padding: EdgeInsets.only(top: 25),
                width: size.width,
                height: size.height - 260,
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
                        options: entreeChaude, title: "ENTREE CHAUDE"),
                    ProductOptions(
                        options: boissonFroide, title: "BOISSON FROIDE"),
                    ProductOptions(
                        options: boissonChaude, title: "BOISSON CHAUDE"),
                    ProductOptions(options: sale, title: "SALE"),
                    ProductOptions(options: platGarni, title: "PLAT GARNI"),
                    ProductOptions(
                        options: viennoiserie, title: "VIENNOISERIE"),
                    ProductOptions(options: completeFormExtra, title: "EXTRA"),
                    OrderAddPlaceHolder()
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

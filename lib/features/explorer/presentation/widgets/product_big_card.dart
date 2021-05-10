import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/widgets/rating_icons.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/form.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductBigCard extends StatefulWidget {
  ProductStatic product;
  UserModel userModel;
  User user;

  ProductBigCard({@required this.product, @required this.user, @required this.userModel});
  @override
  _ProductBigCardState createState() => _ProductBigCardState();
}

class _ProductBigCardState extends State<ProductBigCard> {
  Icon favoriteIcon = Icon(Icons.favorite_border, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNewScreen(
          context,
          screen: OrderForm(user: widget.user, product: widget.product, userModel: widget.userModel,),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 107,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.product.imageLink),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 3,
                ),
                Text("Lorem Ipsum",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                SizedBox(height: 4),
                Text("Lorem Ipsum dolor sit amet",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingIcons(size: 18.0),
                    Text("176,00 MAD",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//

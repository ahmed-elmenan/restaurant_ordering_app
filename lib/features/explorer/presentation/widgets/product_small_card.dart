import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/rating_icons.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/form.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductSmallCard extends StatefulWidget {
  UserModel userModel;
  ProductStatic promosProduct;
  User user;

  ProductSmallCard({@required this.promosProduct, @required this.user, @required this.userModel});
  @override
  _ProductSmallCardState createState() => _ProductSmallCardState();
}

class _ProductSmallCardState extends State<ProductSmallCard> {
  bool isFavorite = false;
  Icon favoriteIcon = Icon(Icons.favorite_border, color: Colors.grey, size: 16);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNewScreen(
          context,
          screen: OrderForm(
            userModel: widget.userModel,
            user: widget.user, product: widget.promosProduct),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },
      child: Container(
          width: (MediaQuery.of(context).size.width - 240),
          height: 181,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120,
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
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.promosProduct.name,
                            style: TextStyle(fontSize: 12))),
                    RatingIcons(size: 12.0),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "176,00 MAD",
                          style: TextStyle(
                              color: GlobalTheme.kSecondaryText,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isFavorite == false) {
                                favoriteIcon = Icon(Icons.favorite,
                                    color: Colors.red, size: 16);
                                isFavorite = true;
                              } else {
                                favoriteIcon = Icon(Icons.favorite_border,
                                    color: Colors.grey, size: 16);
                                isFavorite = false;
                              }
                            });
                          },
                          child: favoriteIcon,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

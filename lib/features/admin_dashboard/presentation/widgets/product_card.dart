import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // pushNewScreen(
        //   context,
        // screen: OrderDetail(order: order),
        //   withNavBar: true, // OPTIONAL VALUE. True by default.
        //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
        // );
      },
      child: Container(
        color: Colors.white10,
        // margin: EdgeInsets.symmetric(vertical: 15),
        // padding: EdgeInsets.symmetric(horizontal: 30),
        height: 71,
        child: Row(
          children: [
            Container(
                width: 71,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/plat4.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                )),
            SizedBox(width: 14),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                flex: 2,
                child: Text("product.name",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
              Text("product.description",
                  style: TextStyle(
                      fontSize: 12, color: GlobalTheme.kSecondaryText)),
              SizedBox(
                height: 5,
              ),
              Text("product.price",
                  style: TextStyle(
                      fontSize: 14,
                      color: GlobalTheme.kSecondaryText,
                      fontWeight: FontWeight.w700)),
            ]),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: GlobalTheme.kOrderCardArrow,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

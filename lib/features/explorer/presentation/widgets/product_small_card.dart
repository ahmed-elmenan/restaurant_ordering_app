import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/product.dart';
import 'package:flutter_application_1/core/widgets/rating_icons.dart';
import 'package:flutter_application_1/features/compte/presentation/pages/account_page.dart';

class ProductSmallCard extends StatefulWidget {
  Product promosProduct;

  ProductSmallCard({@required this.promosProduct});
  @override
  _ProductSmallCardState createState() => _ProductSmallCardState();
}

class _ProductSmallCardState extends State<ProductSmallCard> {
  bool isFavorite = false;
  Icon favoriteIcon = Icon(Icons.favorite_border, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hhhhhh");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return AccountPageParent();
        }));
      },
      child: Container(
          width: (MediaQuery.of(context).size.width - 230),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.promosProduct.name)),
                    RatingIcons(size: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "176,00 MAD",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isFavorite == false) {
                                favoriteIcon =
                                    Icon(Icons.favorite, color: Colors.red);
                                isFavorite = true;
                              } else {
                                favoriteIcon = Icon(Icons.favorite_border,
                                    color: Colors.grey);
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

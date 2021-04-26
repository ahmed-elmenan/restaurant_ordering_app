import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/rating_icons.dart';
import 'package:flutter_application_1/features/explorer/data/models/product_static.dart';
import 'package:flutter_application_1/features/explorer/presentation/pages/form.dart';

class ProductBigCard extends StatefulWidget {
  ProductStatic product;

  ProductBigCard({@required this.product});
  @override
  _ProductBigCardState createState() => _ProductBigCardState();
}

class _ProductBigCardState extends State<ProductBigCard> {
  Icon favoriteIcon = Icon(Icons.favorite_border, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return OrderForm();
        }));
      },
          child: Container(
        width: MediaQuery.of(context).size.width - 100,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.product.imageLink),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                        fontSize: 20)),
                Text("Lorem Ipsum dolor sit amet",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingIcons(size: 20.0),
                    Text("176 MAD",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
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

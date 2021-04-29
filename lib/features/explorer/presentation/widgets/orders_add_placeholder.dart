import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/order_count.dart';

class OrderAddPlaceHolder extends StatelessWidget {
  OrderModel order;
  double total = 75.00;

  OrderAddPlaceHolder({@required this.order});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: GlobalTheme.kExtraColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${total.toString()} MAD",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          OrderCount(order),
          Container(
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.shopping_bag_outlined,
                  color: GlobalTheme.kExtraColor, size: 25),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/features/orders/presentation/pages/order_detail.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class OrderCard extends StatelessWidget {
  OrderModel order;

  OrderCard({@required this.order});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            "assets/images/plat4.jpg",
          )),
      title: Text(order.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(order.orderCode),
          Text(order.totalPrice.toString()),
        ],
      ),
      onTap: () {
        pushNewScreen(
          context,
          screen: OrderDetail(orderId: order.id),
          withNavBar: true, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
      },

      isThreeLine: true,
      trailing: Icon(Icons.arrow_forward), // change to order name
      // child: Center(child: ),
    );
  }
}

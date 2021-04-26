import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';

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
      title: Text(order.description),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(order.amount.toString()),
          Text(order.amount.toString()),
        ],
      ),
      onTap: () {
        print("ok");
      },
      
      isThreeLine: true,
      trailing: Icon(Icons.arrow_forward), // change to order name
      // child: Center(child: ),
    );
  }
}

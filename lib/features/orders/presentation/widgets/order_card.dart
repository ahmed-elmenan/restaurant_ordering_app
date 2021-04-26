import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';

class OrderCard extends StatelessWidget {
  OrderModel order;

  OrderCard({@required this.order});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Center(child: Text(order.description)),
    );
  }
}

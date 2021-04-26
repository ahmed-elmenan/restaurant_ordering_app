import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  String orderId;
  OrderDetail({Key key, @required this.orderId}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text("details"),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';

class OrderCount extends StatefulWidget {
  OrderModel order;

  OrderCount(this.order);
  @override
  _OrderCountState createState() => _OrderCountState();
}

class _OrderCountState extends State<OrderCount> {
  TextStyle textStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);

  @override
  void initState() {
    super.initState();
    widget.order.amount = 1;
  }

  increaseOrderCount() {
    setState(() {
      widget.order.amount++;
      
    });
  }

  decreaseOrderCount() {
    setState(() {
      if (widget.order.amount > 1) widget.order.amount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                decreaseOrderCount();
              },
              child: Text("-", style: textStyle)),
          Text(widget.order.amount.toString(), style: textStyle),
          InkWell(
              onTap: () {
                increaseOrderCount();
              },
              child: Text("+", style: textStyle)),
        ],
      ),
    );
  }
}

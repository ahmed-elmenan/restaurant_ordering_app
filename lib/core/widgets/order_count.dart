import 'package:flutter/material.dart';

class OrderCount extends StatefulWidget {
  @override
  _OrderCountState createState() => _OrderCountState();
}

class _OrderCountState extends State<OrderCount> {
  int _orderCount;
  TextStyle textStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);

  @override
  void initState() {
    super.initState();
    _orderCount = 1;
  }

  increaseOrderCount() {
    setState(() {
      _orderCount++;
    });
  }

  decreaseOrderCount() {
    setState(() {
      if (_orderCount > 1) _orderCount--;
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
          Text(_orderCount.toString(), style: textStyle),
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

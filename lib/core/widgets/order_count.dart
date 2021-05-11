import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/models/order.dart';

class OrderCount extends StatefulWidget {
  OrderModel order;
  VoidCallback onSelectedPressed;

  OrderCount(this.order, this.onSelectedPressed);
  @override
  _OrderCountState createState() => _OrderCountState();
}

class _OrderCountState extends State<OrderCount>
    with AutomaticKeepAliveClientMixin {
  TextEditingController usernameController = TextEditingController();
  TextStyle textStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14);

  @override
  void initState() {
    super.initState();
    widget.order.amount = 1;
  }

  increaseOrderCount() {
    print(widget.order.amount);
    setState(() {
      widget.order.amount++;
      usernameController.text = widget.order.amount.toString();
    });
    widget.onSelectedPressed();
  }

  decreaseOrderCount() {
    print(widget.order.amount);
    setState(() {
      if (widget.order.amount > 1) widget.order.amount--;
      usernameController.text = widget.order.amount.toString();
    });
    widget.onSelectedPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 130,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () {
                decreaseOrderCount();
              },
              child: Container(
                  height: 32,
                  width: 30,
                  child: Center(child: Text("-", style: textStyle)))),
          // Text(widget.order.amount.toString(), style: textStyle),

          Form(
            child: Container(
              height: 25,
              width: 45,
              // color: GlobalTheme.kExtraColor,
              padding: EdgeInsets.only(top: 10),

              child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      widget.order.amount = int.parse(value);
                      widget.onSelectedPressed();
                    });
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                  ],
                  style: textStyle,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                    hintText: widget.order.amount.toString(),
                    border: InputBorder.none,
                  )),
            ),
          ),

          InkWell(
              onTap: () {
                increaseOrderCount();
              },
              child: Container(
                  height: 32,
                  width: 30,
                  child: Center(
                      child: Text("+",
                          textAlign: TextAlign.right, style: textStyle)))),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

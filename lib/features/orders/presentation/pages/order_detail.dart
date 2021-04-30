import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/header_with_back_arrow.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/orders/presentation/bloc/order_detail_bloc.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/order_status_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetail extends StatefulWidget {
  OrderModel order;
  OrderDetail({Key key, @required this.order}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  double dileveryPrice = 11.00;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 60.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ListView(children: [
            HeaderWithBackArrow(title: "Details de votre commandes"),
            SizedBox(height: 15),
            Divider(color: Colors.grey),
            OrderDileveryStatus(
              status: widget.order.delivered == false
                  ? "Commande en progression"
                  : "Commande livrée",
              orderDate: widget.order.createdAt,
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.order.amount.toString()} x ${widget.order.name}",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("${widget.order.totalPrice.toString()} MAD",
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
            SizedBox(height: 3),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: widget.order.orderForm.length,
                itemBuilder: (context, int index) {
                  String key = widget.order.orderForm.keys.elementAt(index);
                  if (key == "EXTRA")
                    return SizedBox();
                  else {
                    return Text("${widget.order.orderForm[key]}",
                        style: TextStyle(fontSize: 16, color: Colors.grey));
                  }
                }),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: widget.order.orderForm["EXTRA"].length,
                itemBuilder: (context, int index) {
                  String item = widget.order.orderForm["EXTRA"][index]["name"];
                  return Text("$item",
                      style: TextStyle(fontSize: 16, color: Colors.grey));
                }),
            SizedBox(height: 15),
            Divider(color: Colors.grey),
            SizedBox(height: 15),
            SizedBox(height: 3),
            Text("Détails", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Sous-total",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              Text("${widget.order.totalPrice.toString()} MAD",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Livraison",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              Text("${dileveryPrice.toString()} MAD",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Total", style: TextStyle(fontSize: 16)),
              Text(
                  "${(dileveryPrice + widget.order.totalPrice).toString()} MAD",
                  style: TextStyle(fontSize: 16)),
            ]),
            SizedBox(height: 10),
          ]),
        ));
  }
}

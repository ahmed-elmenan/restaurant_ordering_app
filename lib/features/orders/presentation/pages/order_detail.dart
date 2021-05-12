import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/models/user.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/convert_date_time_display.dart';
import 'package:flutter_application_1/core/widgets/header_with_back_arrow.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/Dilevery_adress.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/order_status_card.dart';

class OrderDetail extends StatefulWidget {
  OrderModel order;
  bool toExplorer;
  User user;
  UserModel userModel;
  OrderDetail({Key key, @required this.order, this.toExplorer = false, this.user, this.userModel}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  double dileveryPrice = 11.00;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 57.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(children: [
            HeaderWithBackArrow(title: "Détails de votre commandes", toExplorer: widget.toExplorer, user: widget.user, userModel: widget.userModel,),
            SizedBox(height: 16),
            Divider(color: GlobalTheme.kDeviderColor),
            OrderDileveryStatus(
              status: widget.order.status,
              orderDate: widget.order.createdAt ?? DateTime.now(),
              orderCode: widget.order.orderCode,
            ),
            SizedBox(height: 15),
            Divider(color: GlobalTheme.kDeviderColor),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.order.amount.toString()}x ${widget.order.name}",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: GlobalTheme.ktitleColor)),
                Text("${widget.order.totalPrice.toStringAsFixed(2)} MAD",
                    style: TextStyle(
                        fontSize: 14, color: GlobalTheme.kSecondaryText)),
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text("${widget.order.orderForm[key]}",
                          style: TextStyle(
                              fontSize: 12,
                              color: GlobalTheme.kSecondaryText,
                              fontWeight: FontWeight.w500)),
                    );
                  }
                }),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: widget.order.orderForm["EXTRA"].length,
                itemBuilder: (context, int index) {
                  String item = widget.order.orderForm["EXTRA"][index]["name"];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text("$item",
                        style: TextStyle(
                            fontSize: 12, color: GlobalTheme.kSecondaryText)),
                  );
                }),
            SizedBox(height: 15),
            Divider(color: GlobalTheme.kDeviderColor),
            SizedBox(height: 15),
            Text("Détails",
                style: TextStyle(
                    fontSize: 16,
                    color: GlobalTheme.ktitleColor,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Sous-total",
                  style: TextStyle(
                      fontSize: 14, color: GlobalTheme.kSecondaryText)),
              Text("${widget.order.totalPrice.toStringAsFixed(2)} MAD",
                  style: TextStyle(
                      fontSize: 14, color: GlobalTheme.kSecondaryText)),
            ]),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Livraison",
                  style: TextStyle(
                      fontSize: 14, color: GlobalTheme.kSecondaryText)),
              Text("${dileveryPrice.toStringAsFixed(2)} MAD",
                  style: TextStyle(
                      fontSize: 14, color: GlobalTheme.kSecondaryText)),
            ]),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Total",
                  style: TextStyle(
                      fontSize: 14,
                      color: GlobalTheme.ktitleColor,
                      fontWeight: FontWeight.w500)),
              Text(
                  "${(dileveryPrice + widget.order.totalPrice).toStringAsFixed(2)} MAD",
                  style: TextStyle(
                      fontSize: 14,
                      color: GlobalTheme.ktitleColor,
                      fontWeight: FontWeight.w500)),
            ]),
            SizedBox(height: 15),
            Divider(color: GlobalTheme.kDeviderColor),
            SizedBox(height: 15),
            Text("Adresse de livraison",
                style: TextStyle(
                    fontSize: 14,
                    color: GlobalTheme.ktitleColor,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            DileveryAdress(),
          ]),
        ));
  }
}

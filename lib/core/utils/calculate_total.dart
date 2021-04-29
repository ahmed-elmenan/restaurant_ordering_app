import 'package:flutter_application_1/core/models/order.dart';

double calculate_total(OrderModel order, double order_price) {
  double res = 0;

  for (var item in order.orderForm["EXTRA"]) {
    res += item["price"];
  }
  return res + order_price;
}

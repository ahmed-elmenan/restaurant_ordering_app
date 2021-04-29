import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/header_with_back_arrow.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/orders/presentation/bloc/order_detail_bloc.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/order_status_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetail extends StatefulWidget {
  String orderId;
  OrderDetail({Key key, @required this.orderId}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  OrderdetailblocBloc _orderDetailBloc = OrderdetailblocBloc();
  @override
  void dispose() {
    _orderDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 60.0),
        color: Colors.white,
        child: BlocProvider(
          create: (context) => _orderDetailBloc
            ..add(OrderdetailblocEvent.loadOrderDetail(widget.orderId)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: ListView(children: [
              HeaderWithBackArrow(title: "Details de votre commandes"),
              SizedBox(height: 15),
              Divider(color: Colors.grey),
              BlocBuilder<OrderdetailblocBloc, OrderdetailblocState>(
                  builder: (context, state) {
                Widget content;
                state.when(initial: () {
                  content = Container();
                }, loadOrderDetailLoading: () {
                  content = buildLoadingUI();
                }, loadOrderDetailOnProgressSuccess: (order) {
                  content = OrderDileveryStatus(
                    status: "Commande en progression",
                    orderDate: order.createdAt,
                  );
                }, loadOrderDetailDeliveredSuccess: (order) {
                  content = OrderDileveryStatus(
                    status: "Commande livrée",
                    orderDate: order.createdAt,
                  );
                }, loadOrderDetailFailed: (message) {
                  content = FailureWidget(message: message);
                });
                return content;
              }),
              Divider(color: Colors.grey),
            ]),
          ),
        ));
  }
}

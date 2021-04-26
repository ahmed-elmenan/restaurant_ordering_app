import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/orders/presentation/bloc/orders_bloc.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/order_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersPage extends StatefulWidget {
  final User user;

  OrdersPage({Key key, this.user}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  OrdersBloc _orderBloc = OrdersBloc();

  @override
  void dispose() {
    _orderBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          _orderBloc..add(OrdersEvent.loadOrders(widget.user.uid)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Vos dernières commandes"),
              BlocBuilder<OrdersBloc, OrdersState>(
                builder: (context, state) {
                  Widget content;
                  state.when(initial: () {
                    content = Container();
                  }, loadOrdersLoading: () {
                    content = buildLoadingUI();
                  }, loadOrdersSuccess: (ordersList) {
                    content = OrdersList(ordersList: ordersList);
                  }, loadOrdersFailed: (message) {
                    content = FailureWidget(message: message);
                  });
                  return content;
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}

class OrdersList extends StatelessWidget {
  List<OrderModel> ordersList;

  OrdersList({@required this.ordersList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ordersList.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(
                color: Colors.grey,
              ),
              OrderCard(order: ordersList[index]),
              index + 1 == ordersList.length
                  ? Divider(color: Colors.grey)
                  : Container(),
            ],
          );
        });
  }
}
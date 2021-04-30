import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/orders/presentation/orders_bloc/orders_bloc.dart';
import 'package:flutter_application_1/features/orders/presentation/widgets/order_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrdersPage extends StatefulWidget {
  final User user;

  OrdersPage({Key key, this.user}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  OrdersBloc _orderBloc = OrdersBloc();

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  _onRefresh() async {
    _orderBloc..add(OrdersEvent.loadOrders(widget.user.uid));
    _refreshController.refreshCompleted();
  }

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
      child: SmartRefresher(
        controller: _refreshController,
        header: WaterDropMaterialHeader(
          color: Colors.white,
          backgroundColor: GlobalTheme.kColorLime,
        ),
        onRefresh: _onRefresh,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Center(
                  child: Text(
                "Vos dernières commandes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
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
      ),
    );
  }
}

class OrdersList extends StatelessWidget {
  List<OrderModel> ordersList;

  OrdersList({@required this.ordersList});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
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
            }),
      ],
    );
  }
}

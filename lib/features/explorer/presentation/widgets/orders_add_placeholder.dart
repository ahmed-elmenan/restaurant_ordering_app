import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/products_prices.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/calculate_total.dart';
import 'package:flutter_application_1/core/widgets/failure.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/core/widgets/order_count.dart';
import 'package:flutter_application_1/features/explorer/presentation/bloc/add_order_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderAddPlaceHolder extends StatelessWidget {
  OrderModel order;

  OrderAddPlaceHolder({@required this.order});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddOrderBloc(),
        child: OrderAddPlaceHolderChild(
          order: order,
        ));
  }
}

class OrderAddPlaceHolderChild extends StatelessWidget {
  OrderModel order;
  AddOrderBloc addOrderBloc;
  double total = 75.00;

  OrderAddPlaceHolderChild({@required this.order});
  @override
  Widget build(BuildContext context) {
    addOrderBloc = BlocProvider.of<AddOrderBloc>(context);

    return BlocListener<AddOrderBloc, AddOrderState>(
        listener: (context, state) {
      Widget content;
      state.when(initial: () {
        print("add order init");
      }, addOrderLoading: () {
        print("Loading");
        content = buildLoadingUI();
      }, addOrderSuccess: () {
        content = Center(
            child: Text(
          "la commande a été ajoutée avec succès",
          style: TextStyle(
            color: Colors.black,
          ),
        ));
      }, addOrderFailed: (String message) {
        content = FailureWidget(message: message);
      });
      return Container();
    }, child:
            BlocBuilder<AddOrderBloc, AddOrderState>(builder: (context, state) {
      Widget content;
      state.when(initial: () {
        content = Container();
      }, addOrderLoading: () {
        content = buildLoadingUI();
      }, addOrderSuccess: () {
        content = Center(child: Text("order added"));
      }, addOrderFailed: (String message) {
        content = FailureWidget(message: message);
      });
      return Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: GlobalTheme.kExtraColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${total.toString()} MAD",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            OrderCount(order),
            Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: InkWell(
                onTap: () {
                  order.totalPrice =
                      calculate_total(order, COMPLETE_FORM_PRICE);
                  addOrderBloc
                      .add(AddOrderEvent.addOrderButtonPressed(this.order));
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Container(
                              width: 200,
                              height: 200,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: GlobalTheme.kColorLime,
                                      size: 100,
                                    ),
                                    Text(
                                        "Votre commande a été ajoutée avec succès",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ));
                      });
                },
                child: Icon(Icons.shopping_bag_outlined,
                    color: GlobalTheme.kExtraColor, size: 25),
              ),
            )
          ],
        ),
      );
    }));
  }
}

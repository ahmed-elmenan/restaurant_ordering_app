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
import 'package:flutter_svg/svg.dart';

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
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 54,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 13, left: 28),
          margin: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 25),
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
                "${total.toStringAsFixed(2)} MAD",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              OrderCount(order),
              Container(
                width: 52,
                height: 40,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: GestureDetector(
                  onTap: () {
                    order.totalPrice =
                        calculate_total(order, COMPLETE_FORM_PRICE);
                    addOrderBloc
                        .add(AddOrderEvent.addOrderButtonPressed(this.order));
                  },
                  child: SvgPicture.asset(
                    "assets/images/paniers.svg",
                    color: GlobalTheme.kExtraColor,
                    height: 16.77,
                    width: 16.77,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}

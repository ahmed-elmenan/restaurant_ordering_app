import 'package:dropdown_below/dropdown_below.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/bloc/orders_bloc.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/widgets/admin_order_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../main.dart';

class AdminDashBoardOrders extends StatelessWidget {
  User user;

  AdminDashBoardOrders({@required this.user});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => OrdersBloc(),
        child: AdminDashBoardOrdersChild(user: user));
  }
}

class AdminDashBoardOrdersChild extends StatefulWidget {
  User user;

  AdminDashBoardOrdersChild({@required this.user});
  @override
  _AdminDashBoardOrdersChildState createState() =>
      _AdminDashBoardOrdersChildState();
}

class _AdminDashBoardOrdersChildState extends State<AdminDashBoardOrdersChild> {
  OrdersBloc ordersBloc;
  TextStyle dropDowntextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: GlobalTheme.ktitleColor);

  List<Map<String, dynamic>> dropDownitems = [
    {'status': 'Toute', 'color': Colors.red},
    {'status': 'En attente', 'color': Colors.blue},
    {'status': 'Livrée', 'color': Colors.green},
    {'status': 'Annulée', 'color': Colors.grey},
  ];
  List<String> dateDropDownItems = ["Aujourd'hui"];

  var _selectedTest;
  var _selectedDate;
  Map<String, dynamic> event_data = {
    'status': false,
    'date': false,
  };

  List<DropdownMenuItem> _dropdownTestItems;
  List<DropdownMenuItem> _dropdownDateItems;

  @override
  void initState() {
    ordersBloc = BlocProvider.of<OrdersBloc>(context);
    ordersBloc.add(OrdersEvent.started(event_data));

    super.initState();

    _dropdownTestItems = buildDropdownTestItems(dropDownitems);
    _dropdownDateItems = buildDropdownDateItems(dateDropDownItems);
  }

  List<DropdownMenuItem> buildDropdownDateItems(List dropDownitems) {
    List<DropdownMenuItem> items = List();
    for (var i in dateDropDownItems) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(
            i,
            style: dropDowntextStyle,
          ),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem> buildDropdownTestItems(List dropDownitems) {
    List<DropdownMenuItem> items = List();
    for (var i in dropDownitems) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(
            i['status'],
            style: dropDowntextStyle,
          ),
        ),
      );
    }
    return items;
  }

  onChangeDropdownTests(selectedTest) {
    print(selectedTest);
    setState(() {
      _selectedTest = selectedTest;
      event_data['status'] = _selectedTest['status'];
      ordersBloc.add(OrdersEvent.started(event_data));
    });
  }

  onChangeDropdownDate(selectedDate) {
    print(selectedDate);
    setState(() {
      _selectedDate = selectedDate;
      event_data['date'] = _selectedDate;
      ordersBloc.add(OrdersEvent.started(event_data));
    });
    print(event_data);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
        child: Column(children: [
          Text("Liste des commandes",
              style: GlobalTheme.headerStyle(GlobalTheme.ktitleColor)),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: DropdownBelow(
                  itemWidth: 145,
                  itemTextstyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  boxTextstyle: dropDowntextStyle,
                  boxPadding: EdgeInsets.fromLTRB(13, 12, 0, 12),
                  boxWidth: double.infinity,
                  boxHeight: 45,
                  hint: Text('choisir un status'),
                  value: _selectedTest,
                  items: _dropdownTestItems,
                  onChanged: onChangeDropdownTests,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: DropdownBelow(
                  itemWidth: 145,
                  itemTextstyle: dropDowntextStyle,
                  boxTextstyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  boxPadding: EdgeInsets.fromLTRB(13, 12, 0, 12),
                  boxWidth: double.infinity,
                  boxHeight: 45,
                  hint: Text(
                    'choisir une date',
                    style: dropDowntextStyle,
                  ),
                  value: _selectedDate,
                  items: _dropdownDateItems,
                  onChanged: onChangeDropdownDate,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/images/search.svg",
                color: GlobalTheme.ktitleColor,
                height: 16.09,
              ),
            ],
          ),
          // SizedBox(height: 30),
          // Divider(color: GlobalTheme.kDeviderColor),
          // SizedBox(height: 20),
          // AdminOrderCard(),

          BlocBuilder<OrdersBloc, OrdersState>(builder: (context, state) {
            Widget content;
            state.when(initial: () {
              content = Container();
            }, loading: () {
              content = Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: buildLoadingUI(),
              );
            }, success: (ordersList) {
              content = OrderList(ordersList: ordersList);
              // print(ordersList[1].name);
            }, failed: () {
              content = Container();
              print("nope");
            });
            return content;
          }),
        ]));
  }
}

class OrderList extends StatefulWidget {
  List<OrderModel> ordersList;

  OrderList({@required this.ordersList});

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  int selectedIndex = -1;

  onSelectedPressed(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = 1000;
      } else
        selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.ordersList.length);
    return Flexible(
      flex: 1,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: widget.ordersList.length,
        itemBuilder: (context, index) {
          return AdminOrderCard(
              order: widget.ordersList[index],
              onSelectedPressed: () => onSelectedPressed(index),
              selectedIndex: selectedIndex,
              index: index);
        },
      ),
    );
  }
}

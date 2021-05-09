import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/convert_date_time_display.dart';
import 'package:flutter_application_1/core/widgets/loading.dart';
import 'package:flutter_application_1/features/admin_dashboard/presentation/blocs/update_order_satate_bloc/update_order_state_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminOrderCard extends StatefulWidget {
  OrderModel order;

  AdminOrderCard({@required this.order});
  @override
  _AdminOrderCardState createState() => _AdminOrderCardState();
}

class _AdminOrderCardState extends State<AdminOrderCard> {
  UpdateOrderStateBloc updateOrderStateBloc;
  double dileveryPrice = 11.0;
  double height = 60;
  bool flag = false;
  BoxDecoration bordersShape = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(0),
    ),
  );
  Widget sparator = Divider(color: GlobalTheme.kDeviderColor, thickness: 1);

  Widget details = Container();

  String selectedItem;

  List<Map<String, dynamic>> dropDownitems = [
    {'status': 'En attente', 'color': Colors.blue},
    {'status': 'En traitement', 'color': Colors.blue},
    {'status': 'Livrée', 'color': Colors.green},
    {'status': 'Annulée', 'color': Colors.grey},
  ];
  var _selectedTest;
  List<DropdownMenuItem> _dropdownTestItems;

  @override
  void initState() {
    super.initState();
    updateOrderStateBloc = UpdateOrderStateBloc();
    _dropdownTestItems = buildDropdownTestItems(dropDownitems);
  }

  List<DropdownMenuItem> buildDropdownTestItems(List dropDownitems) {
    List<DropdownMenuItem> items = List();
    for (var i in dropDownitems) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(i['status']),
        ),
      );
    }
    return items;
  }

  onChangeDropdownTests(selectedTest) {
    // print(selectedTest);
    updateOrderStateBloc
        .add(UpdateOrderStateEvent.updateOrderState(widget.order));
    setState(() {
      _selectedTest = selectedTest;
      widget.order.status = _selectedTest;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      width: double.infinity,

      // height: height,
      decoration: bordersShape,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sparator,
          SizedBox(
            height: 15,
          ),
          BlocProvider(
            create: (context) => UpdateOrderStateBloc(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(widget.order.name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ),
                BlocListener<UpdateOrderStateBloc, UpdateOrderStateState>(
                  listener: (context, state) {
                    Widget content;
                    state.when(initial: () {
                      content = Container();
                      print("Succcc");
                    }, loading: () {
                      content = Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: buildLoadingUI(),
                      );
                    }, success: () {
                      content = Container();
                    }, failed: () {
                      print('Failed');
                      content = Container();
                    });
                    return content;
                  },
                  child:
                      BlocBuilder<UpdateOrderStateBloc, UpdateOrderStateState>(
                          builder: (context, state) {
                    Widget content;
                    state.when(initial: () {
                      content = Container();
                    }, loading: () {
                      content = Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: buildLoadingUI(),
                      );
                    }, success: () {
                      content = Container();
                    }, failed: () {
                      print('Failed');
                      content = Container();
                    });
                    return content;
                  }),
                ),
                DropdownBelow(
                  itemWidth: 100,
                  itemTextstyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  boxTextstyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  boxPadding: EdgeInsets.fromLTRB(13, 12, 0, 12),
                  boxWidth: 100,
                  boxHeight: 45,
                  hint: Text('choose item'),
                  value: _selectedTest,
                  items: _dropdownTestItems,
                  onChanged: onChangeDropdownTests,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (flag == false) {
                        flag = true;
                        details = ordersDetail();
                        bordersShape = BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          border: Border.all(
                              color: GlobalTheme.kSecondaryText, width: 1),
                        );
                        sparator = Container();
                      } else {
                        flag = false;
                        details = Container();
                        bordersShape = BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        );
                        sparator = Divider(
                            color: GlobalTheme.kDeviderColor, thickness: 1);
                      }
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(
                          color: GlobalTheme.kSecondaryText, width: 1),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.arrowDown,
                        color: GlobalTheme.kOrderCardArrow,
                        size: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.order.orderCode,
              style:
                  TextStyle(fontSize: 12, color: GlobalTheme.kSecondaryText)),
          SizedBox(height: 10),
          Text(
            convertDateTimeDisplay(widget.order.createdAt.toString()),
            style: TextStyle(color: GlobalTheme.kSecondaryText),
          ),
          details,
          // SizedBox(
          //   height: 15,
          // ),
          // sparator
        ],
      ),
    );
  }

  Widget ordersDetail() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Divider(color: GlobalTheme.kDeviderColor, thickness: 1),
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
              style:
                  TextStyle(fontSize: 14, color: GlobalTheme.kSecondaryText)),
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
      Divider(
        color: GlobalTheme.kDeviderColor,
        thickness: 1,
      ),
      SizedBox(height: 15),
      Text("Détails",
          style: TextStyle(
              fontSize: 16,
              color: GlobalTheme.ktitleColor,
              fontWeight: FontWeight.w500)),
      SizedBox(height: 10),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Sous-total",
            style: TextStyle(fontSize: 14, color: GlobalTheme.kSecondaryText)),
        Text("${widget.order.totalPrice.toStringAsFixed(2)} MAD",
            style: TextStyle(fontSize: 14, color: GlobalTheme.kSecondaryText)),
      ]),
      SizedBox(height: 12),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Livraison",
            style: TextStyle(fontSize: 14, color: GlobalTheme.kSecondaryText)),
        Text("${dileveryPrice.toStringAsFixed(2)} MAD",
            style: TextStyle(fontSize: 14, color: GlobalTheme.kSecondaryText)),
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
    ]);
  }
}

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
  int selectedIndex;
  int index;
  final VoidCallback onSelectedPressed;

  AdminOrderCard(
      {@required this.order,
      this.selectedIndex,
      this.index,
      this.onSelectedPressed});
  @override
  _AdminOrderCardState createState() => _AdminOrderCardState();
}

class _AdminOrderCardState extends State<AdminOrderCard>
    with AutomaticKeepAliveClientMixin {
  UpdateOrderStateBloc updateOrderStateBloc;
  double dileveryPrice = 11.0;

  Widget details = Container();
  TextStyle dropDowntextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: GlobalTheme.ktitleColor);

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
    // print(selectedTest);
    setState(() {
      _selectedTest = selectedTest;
      widget.order.status = _selectedTest['status'];
    });
    updateOrderStateBloc
        .add(UpdateOrderStateEvent.updateOrderState(widget.order));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.selectedIndex == widget.index
          ? EdgeInsets.symmetric(vertical: 7)
          : EdgeInsets.zero,
      padding: widget.selectedIndex == widget.index
          ? EdgeInsets.symmetric(horizontal: 15, vertical: 7)
          : EdgeInsets.zero,
      width: double.infinity,

      // height: height,
      decoration: widget.selectedIndex == widget.index
          ? BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              border: Border.all(color: GlobalTheme.kSecondaryText, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            )
          : BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.selectedIndex == widget.index
              ? Container()
              : Divider(color: GlobalTheme.kDeviderColor, thickness: 1),
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
                      print("status changed");
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
                Container(
                  width: 120,
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                    border:
                        Border.all(color: GlobalTheme.kSecondaryText, width: 1),
                  ),
                  child: Center(
                    child: DropdownButton(
                      // itemWidth: 115,
                      // itemTextstyle: TextStyle(
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //     color: Colors.black),
                      // boxTextstyle: TextStyle(
                      //     fontSize: 12,
                      //     fontWeight: FontWeight.w400,
                      //     color: GlobalTheme.ktitleColor),
                      // boxPadding: EdgeInsets.fromLTRB(13, 12, 0, 12),
                      // boxWidth: 115,
                      // boxHeight: 45,
                      isExpanded: true,
                      style: dropDowntextStyle,
                      underline: SizedBox(),
                      iconDisabledColor: GlobalTheme.kOrderCardArrow,
                      hint: Text(
                        widget.order.status,
                        style: dropDowntextStyle,
                      ),
                      value: _selectedTest,
                      items: _dropdownTestItems,
                      onChanged: onChangeDropdownTests,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      print(widget.selectedIndex);
                      print(widget.index);

                      // widget.selectedIndex = widget.index;
                      widget.onSelectedPressed();

                      // if (widget.selectedIndex == widget.index) {
                      //   if (flag == false) {
                      //     flag = true;
                      //     details = ordersDetail();
                      //     bordersShape = BoxDecoration(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(25),
                      //       ),
                      //       border: Border.all(
                      //           color: GlobalTheme.kSecondaryText, width: 1),
                      //     );
                      //     sparator = Container();
                      //   } else {
                      //     flag = false;
                      //     details = Container();
                      //     bordersShape = BoxDecoration(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(0),
                      //       ),
                      //     );
                      //     sparator = Divider(
                      //         color: GlobalTheme.kDeviderColor, thickness: 1);
                      //   }
                      // }
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(
                          color: GlobalTheme.kOrderCardArrow, width: 1),
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.sortDown,
                        color: GlobalTheme.ktitleColor,
                        size: 14,
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
          SizedBox(height: 10),
          Text(
            "Client: " + widget.order.client,
            style: TextStyle(
                color: GlobalTheme.kSecondaryText, fontWeight: FontWeight.w500),
          ),
          widget.selectedIndex == widget.index ? ordersDetail() : Container()
          // details,
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

  @override
  bool get wantKeepAlive => true;
}

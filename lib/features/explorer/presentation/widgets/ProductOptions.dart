import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/models/order.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

class ProductOptions extends StatefulWidget {
  List<Item> options;
  String title;
  OrderModel order;
  Function(double) handleAddExtraPrice;
  Function(double) handlesubtractExtraPrice;

  ProductOptions(
      {this.options,
      this.title,
      this.order,
      this.handleAddExtraPrice,
      this.handlesubtractExtraPrice});
  @override
  State<StatefulWidget> createState() => ProductOptionsState();
}

class ProductOptionsState extends State<ProductOptions> {
  // List<Item> items;
  int selectedIndex;

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < widget.options.length; i++)
      widget.options[i].isSelected = false;

    selectedIndex = -1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: Color(0xFFEDEDED), width: 1)),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(widget.title,
                style: TextStyle(fontSize: 17, color: GlobalTheme.ktitleColor)),
            Text(widget.title != "EXTRA" ? "*requis" : "",
                style: TextStyle(
                    color: GlobalTheme.kColorLime,
                    fontSize: 10,
                    fontWeight: FontWeight.w500)),
          ]),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: widget.options.length,
            itemBuilder: (context, index) {
              return ListItem(
                  item: widget.options[index],
                  onSelectedPressed: () => onSelectedPressed(index),
                  title: widget.title,
                  selectedIndex: selectedIndex,
                  index: index);
            },
          ),
        ],
      ),
    );
  }

  onExtraItemSelected(int index) {
    for (var map in widget.order.orderForm["EXTRA"]) {
      if (map.containsKey("name")) {
        if (map["name"] == widget.options[index].name) {
          widget.order.orderForm["EXTRA"].removeWhere(
              (item) => item["name"] == widget.options[index].name);
          return;
        }
      }
    }
    widget.order.orderForm["EXTRA"].add({
      "name": widget.options[index].name,
      "price": widget.options[index].extraPrice,
    });
  }

  onSelectedPressed(int index) {
    final item = widget.options[index];
    setState(() {
      selectedIndex = index;
      if (widget.title == "EXTRA") {
        item.isSelected = !item.isSelected;
        if (item.isSelected == true)
          widget.handleAddExtraPrice(item.extraPrice);
        else
          widget.handlesubtractExtraPrice(item.extraPrice);
      }

      print("WWWWWWww" + widget.order.total.toString());
      widget.title == "EXTRA"
          ? onExtraItemSelected(index)
          : widget.order.orderForm[widget.title] = widget.options[index].name;
    });
  }
}

class ListItem extends StatefulWidget {
  ListItem(
      {this.item,
      this.onSelectedPressed,
      this.title,
      this.selectedIndex,
      this.index});

  final Item item;
  final VoidCallback onSelectedPressed;
  final String title;
  final int index;
  final int selectedIndex;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem>
    with AutomaticKeepAliveClientMixin {
  bool isExtra() {
    return (this.widget.title != "EXTRA"
        ? widget.selectedIndex == widget.index
        : widget.item.isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              widget.onSelectedPressed();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: this.widget.title == "EXTRA"
                        ? GlobalTheme.kExtraColor
                        : GlobalTheme.kColorLime,
                    width: isExtra() ? 6 : 2,
                  )),
              height: 19,
              width: 19,
            ),
          ),
          SizedBox(width: 10),
          Text(widget.item.name,
              style:
                  TextStyle(fontSize: 17, color: GlobalTheme.kSecondaryText)),
          SizedBox(width: 10),
          Text(
              this.widget.title == "EXTRA"
                  ? "(+ ${widget.item.extraPrice.toString()} MAD)"
                  : "",
              style: TextStyle(fontSize: 20, color: GlobalTheme.kExtraColor))
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

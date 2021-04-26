import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

class ProductOptions extends StatefulWidget {
  List<Item> options;
  String title;

  ProductOptions({this.options, this.title});
  @override
  State<StatefulWidget> createState() => ProductOptionsState();
}

class ProductOptionsState extends State<ProductOptions> {
  List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: Colors.grey)),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(widget.title),
            Text(widget.title != "EXTRA" ? "*requis" : "",
                style: TextStyle(color: GlobalTheme.kColorLime)),
          ]),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: widget.options.length,
            itemBuilder: (context, index) {
              return ListItem(widget.options[index],
                  () => onSelectedPressed(index), widget.title);
            },
          ),
        ],
      ),
    );
  }

  onSelectedPressed(int index) {
    final item = widget.options[index];
    setState(() {
      item.isSelected = !item.isSelected;
    });
  }
}

class ListItem extends StatelessWidget {
  ListItem(this.item, this.onSelectedPressed, this.title);

  final Item item;
  final VoidCallback onSelectedPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              onSelectedPressed();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: this.title == "EXTRA"
                        ? GlobalTheme.kExtraColor
                        : GlobalTheme.kColorLime,
                    width: item.isSelected ? 6 : 3,
                  )),
              height: 20,
              width: 20,
            ),
          ),
          SizedBox(width: 10),
          Text(item.name, style: TextStyle(fontSize: 20, color: Colors.grey)),
          SizedBox(width: 10),
          Text(
              this.title == "EXTRA"
                  ? "(+ ${item.extraPrice.toString()} MAD)"
                  : "",
              style: TextStyle(fontSize: 20, color: GlobalTheme.kExtraColor))
        ],
      ),
    );
  }
}

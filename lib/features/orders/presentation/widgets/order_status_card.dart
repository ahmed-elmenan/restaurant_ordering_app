import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/convert_date_time_display.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDileveryStatus extends StatefulWidget {
  String status;
  String orderCode;
  DateTime orderDate;
  OrderDileveryStatus({@required this.status,
  @required this.orderDate
  });

  @override
  _OrderDileveryStatusState createState() => _OrderDileveryStatusState();
}

class _OrderDileveryStatusState extends State<OrderDileveryStatus> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
          "assets/images/progression.svg",
          height: 50,
          fit: BoxFit.fitHeight,
          color: GlobalTheme.kColorLime,
        ),
      title: Text(widget.status),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("12"),
          Text(convertDateTimeDisplay(widget.orderDate.toString())),
        ],
      ),
      isThreeLine: true,
    );
  }
}

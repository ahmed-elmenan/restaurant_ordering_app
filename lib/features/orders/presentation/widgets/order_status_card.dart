import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_application_1/core/utils/convert_date_time_display.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderDileveryStatus extends StatefulWidget {
  String status;
  String orderCode;
  DateTime orderDate;
  OrderDileveryStatus(
      {@required this.status,
      @required this.orderDate,
      @required this.orderCode});

  @override
  _OrderDileveryStatusState createState() => _OrderDileveryStatusState();
}

class _OrderDileveryStatusState extends State<OrderDileveryStatus> {
  String selectStateColor(String status) {
    print(">>>><" + status);
    switch (status) {
      case "En attente":
        return "assets/images/traitement.svg";

      case "En traitement":
        return "assets/images/traitement.svg";

      case "Livrée":
        return "assets/images/progression.svg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 71,
      child: Row(
        children: [
          widget.status == "Annulée"
              ? FaIcon(
                  FontAwesomeIcons.timesCircle,
                  color: Colors.red[400],
                  size: 40,
                )
              : SvgPicture.asset(
                  selectStateColor(widget.status),
                  height: 40,
                  color: GlobalTheme.kColorLime,
                ),
          SizedBox(width: 14),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Commande " + widget.status.toLowerCase(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              SizedBox(height: 5),
              Text(
                "Code de la commande: ${widget.orderCode}",
                style: TextStyle(color: GlobalTheme.kSecondaryText),
              ),
              SizedBox(height: 5),
              Text(
                convertDateTimeDisplay(widget.orderDate.toString()),
                style: TextStyle(color: GlobalTheme.kSecondaryText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

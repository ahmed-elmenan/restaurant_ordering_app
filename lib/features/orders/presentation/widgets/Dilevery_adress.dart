import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';

class DileveryAdress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/localisation.svg",
                  height: 13.01,
                  color: GlobalTheme.kColorLime,
                ),
                SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 3.5, top: 1),
                  child: DottedLine(
                    dashLength: 2,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: GlobalTheme.kSecondaryText,
                    dashGapColor: Colors.white,
                    direction: Axis.vertical,
                    lineLength: 30,
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/localisation.svg",
                  height: 13.01,
                  color: GlobalTheme.kExtraColor,
                ),
                SizedBox(width: 8),
              ]),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 120,
                  child: Text(
                    "Avenue des FAR, 20, Tanger",
                    style: TextStyle(color: GlobalTheme.kSecondaryText),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 200,
                  child: Text(
                      "Mosque Nour, GH34, N20, Complexe Hassani, Tanger",
                      style: TextStyle(color: GlobalTheme.kSecondaryText))),
            ],
          )
        ],
      ),
    );
  }
}

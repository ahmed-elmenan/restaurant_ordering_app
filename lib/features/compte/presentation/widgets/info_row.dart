import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoRow extends StatelessWidget {
  String imageUrl;
  String title;
  double imageSize;
  bool flag;

  InfoRow(
      {@required this.imageUrl,
      @required this.title,
      @required this.imageSize,
      this.flag = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            this.imageUrl,
            color: flag ? GlobalTheme.kColorLime : GlobalTheme.ktitleColor,
            height: this.imageSize,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title,
              style: TextStyle(color: GlobalTheme.ktitleColor, fontSize: 15)),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: GlobalTheme.kOrderCardArrow,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

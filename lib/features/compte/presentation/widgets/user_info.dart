import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserInfos extends StatelessWidget {
  String imageUrl;
  double imageSize;
  String title;
  bool flag;

  UserInfos(
      {@required this.imageUrl,
      @required this.title,
      @required this.imageSize,
      this.flag = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            this.imageUrl,
            color: GlobalTheme.ktitleColor,
            height: this.imageSize,
          ),
          SizedBox(
            width: 25,
          ),
          Text(title,
              style: TextStyle(
                  color: flag
                      ? GlobalTheme.ktitleColor
                      : GlobalTheme.kSecondaryText,
                  fontSize: 18)),
          flag
              ? Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: FaIcon(
                      FontAwesomeIcons.chevronRight,
                      color: GlobalTheme.ktitleColor,
                      size: 20,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

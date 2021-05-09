import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget brandWidget() {
  return KeyboardVisibilityBuilder(builder: (context, visible) {
    return visible
        ? Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(
                        "assets/images/back_arrow.svg",
                        color: Color(0xFF4F545D),
                        height: 20,
                        width: 10,
                      )),
                )),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Center(
              child: SvgPicture.asset("assets/images/coemco_logo.svg",
                  height: 150, color: GlobalTheme.kColorLime),
            ),
          );
  });
}

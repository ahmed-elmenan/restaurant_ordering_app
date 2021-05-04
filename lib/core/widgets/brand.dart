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
                      child: Hero(
                        tag: 'header',
                        child: SvgPicture.asset(
                          "assets/images/back_arrow.svg",
                          color: Color(0xFF4F545D),
                          height: 30,
                        ),
                      )),
                )),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Hero(
                tag: 'header',
                child: SvgPicture.asset("assets/images/coemco_logo.svg",
                    height: 150, color: GlobalTheme.kColorLime),
              ),
            ),
          );
  });
}

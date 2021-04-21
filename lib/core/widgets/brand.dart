import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

Widget brandWidget() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 140),
                  color: GlobalTheme.kColorLime,
                  height: 100,
                  child: Center(child: Icon(Icons.train_rounded)),
                ),
              ),
          Text(
            "Comeco",
            style: TextStyle(fontSize: 29, color: GlobalTheme.kColorLime),
          ),
          Text("- Dilevery -",
              style: TextStyle(fontSize: 14, color: GlobalTheme.kColorLime)),
      ],
    );
}

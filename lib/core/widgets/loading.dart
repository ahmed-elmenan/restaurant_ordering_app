import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/global_theme.dart';

Widget buildLoadingUI() {
  return Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(GlobalTheme.kColorLime),
    ),
  );
}

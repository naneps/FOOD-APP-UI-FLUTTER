import 'package:flutter/material.dart';
import 'package:food_app_ui/data/constants.dart';

import 'constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kAccentColor,
    scaffoldBackgroundColor: kBgColor,
    fontFamily: "SF Pro Text",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

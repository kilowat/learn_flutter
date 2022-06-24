import 'package:flutter/material.dart';

class TemplateConfig {
  static late int gridCount;
  static late Color appBarColor;
  static late Color appBarTextColor;
  static late bool statusBarIsDark;
  init() {
    gridCount = 2;
    appBarColor = Colors.white;
    appBarTextColor = Colors.black;
    statusBarIsDark = true;
  }

  static colorToHexString(Color color) {
    return '#FF${color.value.toRadixString(16).substring(2, 8)}';
  }
}

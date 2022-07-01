import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class SizeConfig {
  static late MediaQueryData _mediaQuery;
  static late double screenWidth;
  static late double screenHeight;
  static late Orientation orientation;

  void init(context) {
    _mediaQuery = MediaQuery.of(context);
    screenWidth = _mediaQuery.size.width;
    screenHeight = _mediaQuery.size.height;
    orientation = _mediaQuery.orientation;
  }
}

double getProportionHeight(double inputHeight) {
  double screenHeight = SizeConfig.orientation == Orientation.portrait
      ? SizeConfig.screenHeight
      : SizeConfig.screenWidth;
  return (inputHeight / kTemplateHeight) * screenHeight;
}

double getProportionWidth(double inputWidth) {
  double screenWidth = SizeConfig.orientation == Orientation.portrait
      ? SizeConfig.screenWidth
      : SizeConfig.screenHeight;
  return (inputWidth / kTemplateWidth) * screenWidth;
}
import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
    ),
    iconTheme: const IconThemeData(color: kSecondaryColor),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.light(
        secondary: kSecondaryLightColor,
        onBackground: kSecondaryLightColor.withOpacity(0.6),
        background: kSecondaryLightColor.withOpacity(0.2),
      ),
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      background: Colors.black.withOpacity(0.3),
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: ColorScheme.dark(
        secondary: kSecondaryLightColor,
        background: Colors.black.withOpacity(0.3),
      ),
    ),
  );
}

const kBackgroundDecorationImage = DecorationImage(
  alignment: Alignment.topRight,
  image: AssetImage('assets/images/bg_1.png'),
);

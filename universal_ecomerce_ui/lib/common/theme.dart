import 'package:flutter/material.dart';

import '../import.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      secondaryContainer: Colors.white,
    ),
    iconTheme: const IconThemeData(color: kSecondaryColor),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText1: const TextStyle(color: kTextColor),
      bodyText2: const TextStyle(color: kTextColor, height: 1.5),
      headline2: const TextStyle(
        color: kTextColor,
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
      headline5: const TextStyle(
        fontSize: 15,
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
      headline6: const TextStyle(
        color: kSecondaryVariant,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: const TextStyle(
        color: kSecondaryVariant,
        fontSize: 12,
      ),
      caption: TextStyle(color: kGreyColor.withOpacity(0.3)),
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
    scaffoldBackgroundColor: kDarkBackgroundColor,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      headline2: TextStyle(
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        color: kSecondaryVariant,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(color: kSecondaryVariant, fontSize: 12),
      caption: TextStyle(color: kGreyColor),
    ),
    colorScheme: const ColorScheme.dark(
      primary: kPrimaryColor,
      secondaryContainer: kDarkBlackBackgroundColor,
      secondary: kSecondaryColor,
      background: kDarkBackgroundLighterColor,
    ),
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(
        secondary: kSecondaryLightColor,
        background: kDarkBackgroundLighterColor,
      ),
    ),
  );
}

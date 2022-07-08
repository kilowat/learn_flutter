import 'dart:ui';

import 'package:flutter/material.dart';

const double kTemplateHeight = 812;
const double kTemplateWidth = 375;
const Color kTextColor = Color(0xFF09051C);
const Color kGreyColor = Color(0xFF3B3B3B);
const Color kBackgroundColor = Color(0xFFFFFFFF);
const Color kPrimaryColor = Color(0xFF35D381);
const Color kSecondaryColor = Color(0xFFDA6317);
const Color kSecondaryLightColor = Color(0xFFF9A84D);
const Color kSecondaryVariant = Color(0xFFFEAD1D);
const Color kDarkBackgroundColor = Color(0xFF1B1B21);
const Color kDarkBlackBackgroundColor = Color(0xFF0E0F10);
const Color kDarkBackgroundLighterColor = Color(0xFF282828);
const double kDefaultPadding = 25;

const kHomeScreenGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xFFF3F7FE),
    Color(0xFFE9F2FE),
  ],
  tileMode: TileMode.mirror,
);

const kProfileScreenGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.center,
  colors: <Color>[
    Colors.white,
    Color(0xFFE9F2FE),
  ],
  tileMode: TileMode.clamp,
);

const kBackgroundDecorationImage = DecorationImage(
  alignment: Alignment.topRight,
  image: AssetImage('assets/images/bg_1.png'),
);

class Sizes {
  Sizes._();

  static const double dimen_0 = 0;
  static const double dimen_1 = 1;
  static const double dimen_2 = 2;
  static const double dimen_4 = 4;
  static const double dimen_6 = 6;
  static const double dimen_8 = 8;
  static const double dimen_10 = 10;
  static const double dimen_12 = 12;
  static const double dimen_14 = 14;
  static const double dimen_16 = 16;
  static const double dimen_17 = 17;
  static const double dimen_18 = 18;
  static const double dimen_20 = 20;
  static const double dimen_24 = 24;
  static const double dimen_25 = 25;
  static const double dimen_30 = 30;
  static const double dimen_32 = 32;
  static const double dimen_40 = 40;
  static const double dimen_48 = 48;
  static const double dimen_60 = 60;
  static const double dimen_64 = 64;
  static const double dimen_80 = 80;
  static const double dimen_100 = 100;
  static const double dimen_105 = 105;
  static const double dimen_110 = 110;
  static const double dimen_140 = 140;
  static const double dimen_147 = 147;
  static const double dimen_150 = 150;
  static const double dimen_160 = 160;
  static const double dimen_200 = 200;
  static const double dimen_230 = 230;
  static const double dimen_300 = 300;
}

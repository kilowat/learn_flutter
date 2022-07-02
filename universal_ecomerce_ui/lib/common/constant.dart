import 'dart:ui';

import 'package:flutter/material.dart';

const double kTemplateHeight = 812;
const double kTemplateWidth = 375;
const Color kTextColor = Color(0xFF09051C);
const Color kBackgroundColor = Color(0xFFFFFFFF);
const Color kPrimaryColor = Color(0xFF35D381);
const Color kSecondaryColor = Color(0xFFDA6317);
const Color kSecondaryLightColor = Color(0xFFF9A84D);
const Color kSecondaryVariant = Color(0xFFFEAD1D);
const Color kDarkBackgroundColor = Color(0xFF0E0F10);
const Color kDarkBlackBackgroundColor = Color(0xFF0B0B0D);
const Color kDarkBackgroundLighterColor = Color(0xFF252525);
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

const kBackgroundDecorationImage = DecorationImage(
  alignment: Alignment.topRight,
  image: AssetImage('assets/images/bg_1.png'),
);

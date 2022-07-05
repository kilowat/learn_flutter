import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  static const double mobileWidth = 480;
  final Widget mobilePortrait;
  final Widget? tabletPortrait;
  const Responsive({
    Key? key,
    required this.mobilePortrait,
    this.tabletPortrait,
  }) : super(key: key);

  static bool isMobilePortrait(BuildContext context) {
    return MediaQuery.of(context).size.width <= mobileWidth &&
        MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static bool isTablePortrait(BuildContext context) {
    return MediaQuery.of(context).size.width > mobileWidth &&
        MediaQuery.of(context).orientation == Orientation.portrait;
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= mobileWidth &&
              orientation == Orientation.portrait) {
            return mobilePortrait;
          } else if (constraints.maxWidth > mobileWidth &&
              orientation == Orientation.portrait) {
            return tabletPortrait ?? mobilePortrait;
          } else {
            return tabletPortrait ?? mobilePortrait;
          }
        },
      );
    });
  }
}

import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({
    Key? key,
    required this.child,
    this.backgroundImage,
    this.gradient,
  }) : super(key: key);

  final Widget child;
  final DecorationImage? backgroundImage;
  final LinearGradient? gradient;

  @override
  Widget build(BuildContext context) {
    bool isLightTheme =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: backgroundImage,
          gradient: isLightTheme ? gradient : null,
        ),
        child: child,
      ),
    );
  }
}

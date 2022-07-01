import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.light
        ? Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xFFF3F7FE),
                  Color(0xFFE9F2FE),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: child,
          )
        : child;
  }
}

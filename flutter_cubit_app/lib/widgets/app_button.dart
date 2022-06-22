import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
    this.isIcon = false,
    this.text = "Button",
    this.icon,
  }) : super(key: key);

  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  final double size;
  final String text;
  final IconData? icon;
  final bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: !isIcon!
          ? Center(
              child: Text(text,
                  style: TextStyle(color: color, fontWeight: FontWeight.bold)))
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}

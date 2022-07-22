import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    Key? key,
    required this.press,
    required this.backgroundColor,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final VoidCallback press;
  final Color backgroundColor;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: press,
      constraints: const BoxConstraints.tightFor(
        width: 34.0,
        height: 34.0,
      ),
      shape: const CircleBorder(),
      fillColor: backgroundColor,
      child: Icon(
        icon,
        size: 20,
        color: color,
      ),
    );
  }
}

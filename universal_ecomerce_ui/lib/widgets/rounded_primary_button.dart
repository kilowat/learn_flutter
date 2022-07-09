import 'package:flutter/material.dart';

class RoundedPrimaryButton extends StatelessWidget {
  const RoundedPrimaryButton(
      {Key? key, required this.text, required this.press})
      : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        backgroundColor: Theme.of(context).primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}

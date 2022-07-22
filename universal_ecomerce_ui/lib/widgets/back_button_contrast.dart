import 'package:flutter/material.dart';

import '../import.dart';

class BackButtonContrast extends StatelessWidget {
  const BackButtonContrast({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.transparent,
      child: RoundButton(
        isContrast: true,
        child: Container(
          margin: const EdgeInsets.only(left: 8),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        press: () {
          navigator.pop();
        },
      ),
    );
  }
}

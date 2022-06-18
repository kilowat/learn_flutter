import 'package:flutter/material.dart';
import 'package:tutorial/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}

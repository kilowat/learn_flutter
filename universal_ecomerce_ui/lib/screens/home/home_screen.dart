import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/generated/l10n.dart';
import 'package:universal_ecommerce_ui/import.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Route<T> getRoute<T>() {
    return buildRoute<T>(
      '/home',
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionWidth(60)),
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage('assets/images/bg_1.png'),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ScreenTitle(text: S.of(context).HOME_SCREEN_TITLE),
            SizedBox(height: getProportionWidth(20)),
          ],
        ),
      ),
    );
  }
}

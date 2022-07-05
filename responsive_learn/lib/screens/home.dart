import 'package:flutter/material.dart';
import 'package:responsive_learn/commons/screen_unit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constrain) {
        ScreenUtil.init();
        print(ScreenUtil().scaleWidth * 150);
        print(ScreenUtil().setWidth(150));
        return FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 0.5,
          child: Container(
              color: Colors.blue,
              child: Image.asset('assets/slide.png', fit: BoxFit.cover)),
        );
      }),
    );
  }
}

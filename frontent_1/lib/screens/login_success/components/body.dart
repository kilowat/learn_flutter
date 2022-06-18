import 'package:flutter/material.dart';
import 'package:tutorial/components/default_button.dart';
import 'package:tutorial/screens/home/home_screen.dart';
import 'package:tutorial/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            'assets/images/success.png',
            height: SizeConfig.screenHeight * 0.5,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Text(
            "Авторизация успешна",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(25),
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Вернуться на главную",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

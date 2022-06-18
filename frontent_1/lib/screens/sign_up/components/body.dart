import 'package:flutter/material.dart';
import 'package:tutorial/constants.dart';
import 'package:tutorial/screens/sign_up/components/register_form.dart';
import 'package:tutorial/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Регистрация акаунта",
                style: headingStyle,
              ),
              const Text(
                "Заполните данные о себе или \nПродолжите через социальные сети",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              const RegisterForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tutorial/components/no_account_text.dart';
import 'package:tutorial/components/soc_icon.dart';
import 'package:tutorial/size_config.dart';

import 'signin_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Добро пожаловать",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                const Text(
                  "Авторизуйтесь с помощью email и пароля или \n войдите через социальную сеть",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                const SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocIcon(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocIcon(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocIcon(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

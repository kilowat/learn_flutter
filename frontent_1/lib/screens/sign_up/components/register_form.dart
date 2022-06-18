import 'package:flutter/material.dart';
import 'package:tutorial/components/custom_suffix_icon.dart';
import 'package:tutorial/components/default_button.dart';
import 'package:tutorial/components/form_error.dart';
import 'package:tutorial/components/soc_icon.dart';
import 'package:tutorial/constants.dart';
import 'package:tutorial/screens/otp/otp_screen.dart';
import 'package:tutorial/size_config.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conformPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmail(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPass(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildConfirmPass(),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "Отправить",
            press: () {
              Navigator.pushNamed(context, OtpScreen.routeName);
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
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
        ],
      ),
    );
  }

  Widget buildPass() {
    return TextFormField(
      obscureText: true,
      onSaved: (value) => password = value,
      onChanged: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Ваш пароль",
        labelText: "Пароль",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          icon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  Widget buildConfirmPass() {
    return TextFormField(
      obscureText: true,
      onSaved: (value) => conformPassword = value,
      onChanged: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
        password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "";
        } else if (value != conformPassword) {
          errors.add("Пароли не совподают");
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Введите пароль еще раз",
        labelText: "Повторите пароль",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          icon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      onSaved: (value) => email = value,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Ваш Email",
        labelText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(
          icon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}

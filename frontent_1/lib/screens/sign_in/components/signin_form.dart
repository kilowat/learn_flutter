import 'package:flutter/material.dart';
import 'package:tutorial/components/custom_suffix_icon.dart';
import 'package:tutorial/components/default_button.dart';
import 'package:tutorial/components/form_error.dart';
import 'package:tutorial/constants.dart';
import 'package:tutorial/screens/forgot/forgon_password_screen.dart';
import 'package:tutorial/screens/login_success/login_success_screen.dart';
import 'package:tutorial/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmail(),
          SizedBox(height: getProportionateScreenWidth(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Запомнить меня"),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: const Text(
                  "Забыл пароль",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(20)),
          DefaultButton(
              text: "Продолжить",
              press: () {
                if (_formKey.currentState?.validate() != null) {
                  _formKey.currentState?.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildPassword() {
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

  TextFormField buildEmail() {
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

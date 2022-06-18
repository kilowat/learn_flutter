import 'package:flutter/material.dart';
import 'package:tutorial/components/default_button.dart';
import 'package:tutorial/constants.dart';
import 'package:tutorial/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "Смс верефикация",
              style: headingStyle,
              textAlign: TextAlign.center,
            ),
            const Text(
              "Вам был отправлен код на номер +7 909 12 ****",
              textAlign: TextAlign.center,
            ),
            buildTimer(),
            const OtpForm(),
          ],
        ),
      ),
    );
  }

  Widget buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Код действует",
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${(value as double).toInt()}",
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode p2FocusNode;
  late FocusNode p3FocusNode;
  late FocusNode p4FocusNode;

  @override
  void initState() {
    p2FocusNode = FocusNode();
    p3FocusNode = FocusNode();
    p4FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    p2FocusNode.dispose();
    p3FocusNode.dispose();
    p4FocusNode.dispose();
    super.dispose();
  }

  void nextField({
    required String value,
    required FocusNode focusNode,
  }) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: p2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: p2FocusNode,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: p3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: p3FocusNode,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
                decoration: otpInputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: p4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(60),
              child: TextFormField(
                focusNode: p4FocusNode,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
                decoration: otpInputDecoration,
                onChanged: (value) {
                  p4FocusNode.unfocus();
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        DefaultButton(
          text: "Отправить",
          press: () {},
        ),
      ],
    );
  }
}

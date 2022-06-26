import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_ui/components/primary_button.dart';
import 'package:messanger_ui/constants.dart';
import 'package:messanger_ui/screens/chats/chat_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2),
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? Image.asset('assets/images/Logo_light.png', height: 145)
                  : Image.asset('assets/images/Logo_dark.png', height: 145),
              const Spacer(),
              PrimaryButton(
                text: "Login",
                press: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ChatScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Register",
                press: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ChatScreen(),
                    ),
                  );
                },
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_ui/constants.dart';
import 'package:messanger_ui/screens/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Image.asset('assets/images/welcome_image.png'),
            const Spacer(flex: 3),
            Text(
              "Welcom to our freedom \nmessanging app",
              textAlign: TextAlign.center,
              style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "Freedom talk any person of our \nmother language.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textTheme.bodyText1!.color!.withOpacity(0.8),
              ),
            ),
            const Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: textTheme.bodyText1!.copyWith(
                        color: textTheme.bodyText1!.color!.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Icon(Icons.arrow_forward_ios,
                        size: 16,
                        color: textTheme.bodyText1!.color!.withOpacity(0.8)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

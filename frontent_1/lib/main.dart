import 'package:flutter/material.dart';
import 'package:tutorial/routs.dart';
import 'package:tutorial/screens/profile/profile_screen.dart';
import 'package:tutorial/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}

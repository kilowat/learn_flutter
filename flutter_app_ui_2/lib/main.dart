import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_ui_2/screens/home/home_screen.dart';
import 'package:flutter_app_ui_2/template_config.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TemplateConfig().init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Furniture app',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: TemplateConfig.appBarColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: TemplateConfig.appBarColor,
            statusBarIconBrightness: TemplateConfig.statusBarIsDark
                ? Brightness.dark
                : Brightness.light, // For Android (dark icons)
            statusBarBrightness: TemplateConfig.statusBarIsDark
                ? Brightness.light
                : Brightness.dark, // For iOS (dark icons)
          ),
        ),
        textTheme:
            GoogleFonts.dmSansTextTheme().apply(decorationColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tutorial/screens/cart/cart_screen.dart';
import 'package:tutorial/screens/details/details_screen.dart';
import 'package:tutorial/screens/forgot/forgon_password_screen.dart';
import 'package:tutorial/screens/home/home_screen.dart';
import 'package:tutorial/screens/login_success/login_success_screen.dart';
import 'package:tutorial/screens/otp/otp_screen.dart';
import 'package:tutorial/screens/profile/profile_screen.dart';
import 'package:tutorial/screens/sign_in/sign_in_screen.dart';
import 'package:tutorial/screens/sign_up/signup_screen.dart';
import 'package:tutorial/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};

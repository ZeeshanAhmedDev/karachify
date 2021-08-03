import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_app_karachify/Constants/const.dart';
import 'mycartApp.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/food-delivery.png',
      splashIconSize: kSplashIconSize,
      centered: true,
      backgroundColor: kSplashScreenBgColor,
      nextScreen: MyCartApp(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

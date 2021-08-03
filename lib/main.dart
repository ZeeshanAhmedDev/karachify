import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Constants/const.dart';
import 'Screens/SplashScreen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldBgColor,
        primaryColor: kPrimaryColor,
        accentColor: kConstantColor,
      ),
      home: SplashScreen(),
    );
  }
}

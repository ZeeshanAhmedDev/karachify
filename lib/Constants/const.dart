import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const kPrimaryColor = Color(0xFF34656D);
const kConstantColor = Color(0xFF64C9CF);
const kScaffoldBgColor = Color(0xFF334443);
const kSplashScreenBgColor = Color(0xFF082032);
const kSplashIconSize = 200.0;

const kProductNameTextStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w700, color: CupertinoColors.white);

const kProductPriceTextStyle =
    TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w500);

const kDividerLineColor = Color(0xFF999999);
const kFinalDividerLineColor = Color(0xFFFFC107);
const kCheckOutButtonStyle =
    TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w500);

const kTotalSumText = TextStyle(
    color: kFinalDividerLineColor, fontWeight: FontWeight.w900, fontSize: 20.0);

const kAlertStyleWithTextStyle = AlertStyle(
  animationType: AnimationType.shrink,
  titleStyle: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800,
  ),
  overlayColor: Colors.transparent,
  alertAlignment: Alignment.center,
  backgroundColor: kPrimaryColor,
);

const kCoolAlertTitle = 'Order Details';
const kCoolAlertText = 'Thanks for your Order';
const kAlertTitle = 'Add to Cart';
const kCheckOutText = 'Check Out';

const kAppTitle = 'karachi fy';

const kDialogButtonTextStyle = TextStyle(color: Colors.white, fontSize: 20);

const kDialogCancelButtonColor = Colors.red;
const kWhiteColourWhiteColor = Color(0xFFffffff);
const kTransparentColor = Colors.transparent;

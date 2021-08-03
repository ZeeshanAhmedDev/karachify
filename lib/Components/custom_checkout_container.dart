import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Constants/const.dart';

class CustomCheckOutContainer extends StatelessWidget {
  const CustomCheckOutContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          kCheckOutText,
          style: kCheckOutButtonStyle,
        ),
        height: 40.0,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_karachify/Constants/const.dart';

class CustomCheckOutContainer extends StatelessWidget {
  const CustomCheckOutContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        kCheckOutText,
        style: kCheckOutButtonStyle,
      ),
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
      ),
    );
  }
}

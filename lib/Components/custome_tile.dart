import 'package:flutter/material.dart';

import '../Constants/const.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String text;

  CustomListTile(
      {required this.icon, required this.iconSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kTransparentColor,
      child: InkWell(
        onTap: () => print('h'),
        child: ListTile(
          leading: Icon(
            icon,
            size: iconSize,
            color: kWhiteColourWhiteColor,
          ),
          title: Text(
            text,
            style: TextStyle(color: kWhiteColourWhiteColor),
          ),
        ),
      ),
    );
  }
}

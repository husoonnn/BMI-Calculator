import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;

  IconContent({this.genderIcon, this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          genderIcon,
          size: 100.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderName,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

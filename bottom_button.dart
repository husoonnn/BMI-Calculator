import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String displayedText;
  final Function onTap;
  BottomButton({@required this.displayedText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            displayedText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

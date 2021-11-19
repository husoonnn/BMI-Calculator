import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData adjustmentIcon;
  final Function onPressed;
  RoundIconButton({@required this.adjustmentIcon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(adjustmentIcon),
        onPressed: onPressed,
        constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E));
  }
}

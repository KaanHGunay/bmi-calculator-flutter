import 'package:flutter/material.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/core/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.text, @required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: cardsTextStyle,
            )),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomHeight,
      ),
    );
  }
}
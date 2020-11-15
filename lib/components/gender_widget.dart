import 'package:flutter/material.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/core/constants.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget(this.icon, this.text);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labelStyle,
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:bmi_calculator/core/constants.dart';

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
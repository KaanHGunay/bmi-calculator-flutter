import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.iconData, @required this.onPress});

  final IconData iconData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      elevation: 0.0,
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

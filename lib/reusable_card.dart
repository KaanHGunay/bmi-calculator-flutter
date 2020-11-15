import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({@required this.color, this.child});
  final Color color;
  final Widget child;

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
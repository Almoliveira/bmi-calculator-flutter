import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colorWidget, this.cardChild, this.onPress});

  final Color colorWidget;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: colorWidget,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

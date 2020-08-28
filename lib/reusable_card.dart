import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function changeGender;
  ReusableCard({this.colour, this.cardChild, this.changeGender});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeGender,
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(15),
        child: cardChild,
      ),
    );
  }
}

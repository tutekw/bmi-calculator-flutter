import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8d8e98),
);

final iconSize = 80.0;
final gap = 15.0;

class TopCardContent extends StatelessWidget {
  final IconData icon;
  final String text;

  TopCardContent(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: gap,
        ),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}

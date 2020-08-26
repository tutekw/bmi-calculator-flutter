import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8d8e98),
          ),
        )
      ],
    );
  }
}

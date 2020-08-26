import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => InputPage(),
        },
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0B0E23),
          accentColor: Colors.purple,
          backgroundColor: Color(0xFFFFFFFF),
          scaffoldBackgroundColor: Color(0xFF0B0E23),
        ));
  }
}

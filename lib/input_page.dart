import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'top_card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = 0xFF1D1E33;
const inactiveCardColour = 0xFF111328;
const bottomContainerColour = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int activeCard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      activeCard = 1;
                      setState(() {});
                    },
                    child: ReusableCard(
                      cardChild: TopCardContent(FontAwesomeIcons.mars, 'MALE'),
                      colour: activeCard == 1
                          ? Color(activeCardColour)
                          : Color(inactiveCardColour),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      activeCard = 2;
                      setState(() {});
                    },
                    child: ReusableCard(
                      cardChild:
                          TopCardContent(FontAwesomeIcons.venus, 'FEMALE'),
                      colour: activeCard == 2
                          ? Color(activeCardColour)
                          : Color(inactiveCardColour),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(activeCardColour),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: Color(activeCardColour),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: Color(
                      activeCardColour,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColour),
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

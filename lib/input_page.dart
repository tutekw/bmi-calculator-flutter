import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'top_card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int activeCard = 0;
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

//1 = Male 2 = Female
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      }
    }
    if (gender == 2) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      }
    }
  }

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
                      updateColour(1);
                      setState(() {});
                    },
                    child: ReusableCard(
                      cardChild: TopCardContent(FontAwesomeIcons.mars, 'MALE'),
                      colour: maleCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateColour(2);
                      setState(() {});
                    },
                    child: ReusableCard(
                      cardChild:
                          TopCardContent(FontAwesomeIcons.venus, 'FEMALE'),
                      colour: femaleCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                )),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

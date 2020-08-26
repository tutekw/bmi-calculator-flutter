import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = 0xFF1D1E33;
const bottomContainerColour = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8d8e98),
                          ),
                        )
                      ],
                    ),
                    colour: Color(activeCardColour),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8d8e98),
                          ),
                        )
                      ],
                    ),
                    colour: Color(activeCardColour),
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

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  ReusableCard({this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(15),
      child: cardChild,
    );
  }
}

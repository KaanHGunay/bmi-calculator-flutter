import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/core/genders.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/screens/result_page.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/round_icon_button.dart';
import 'package:bmi_calculator/core/calculator.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/gender_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/core/constants.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/bottom_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int height = 180;
  int weight = 80;
  int age = 20;

  void selectGender(Genders gender) {
    maleCardColor =
        gender == Genders.MALE ? activeCardColor : inactiveCardColor;
    femaleCardColor =
        gender == Genders.FEMALE ? activeCardColor : inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender(Genders.MALE);
                      });
                    },
                    color: maleCardColor,
                    child: GenderWidget(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender(Genders.FEMALE);
                      });
                    },
                    color: femaleCardColor,
                    child: GenderWidget(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: cardsTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        this.height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: cardsTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  this.weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  this.weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: cardsTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  this.age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  this.age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            text: 'CALCULATE',
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(calculator: calc,);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

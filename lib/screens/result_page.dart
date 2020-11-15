import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/bottom_button.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/core/constants.dart';
import 'file:///C:/Users/PYSB378644/StudioProjects/bmi-calculator-flutter/lib/components/reusable_card.dart';
import 'package:bmi_calculator/core/calculator.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({this.calculator});

  final Calculator calculator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calculator.getResults(),
                    style: resultTextStyle,
                  ),
                  Text(
                    calculator.calculateBMI(),
                    style: bmiTextStyle,
                  ),
                  Text(
                    calculator.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: bodyTextStyle,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

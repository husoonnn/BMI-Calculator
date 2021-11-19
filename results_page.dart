import 'package:bmi_calculator/constants.dart';

import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String results;
  final String interpretation;

  ResultsPage(
      {@required this.bmi,
      @required this.results,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'Your Result',
                style: kBMICalculatorTextStyle,
              ),
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      results,
                      style: kBMIIndicationTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMINumberTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ]),
            ),
            BottomButton(
              displayedText: 'RE-CALCULATE',
              onTap: () {
                // Navigator.pushNamed(context, '/results');
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

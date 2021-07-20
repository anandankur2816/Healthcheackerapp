import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../constants.dart';

class ResultChecker extends StatelessWidget {
  ResultChecker(
      {@required this.heart,
      @required this.respiratory,
      @required this.hypertension,
      @required this.immune,
      @required this.healthrisk});
  final String heart;
  final String respiratory;
  final String hypertension;
  final String immune;
  final String healthrisk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Checker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Your risk in this scenerio is:-',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  Text(
                    '$healthrisk' + '%',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    '$heart',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    '$respiratory',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    '$hypertension',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    '$immune',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          BottomButton(
            buttonTitle: 'Re-Calculate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

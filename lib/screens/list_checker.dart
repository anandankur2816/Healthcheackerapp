import 'package:bmi_calculator/screens/result_checker.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../calculator_brain.dart';
import '../constants.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';

int cardio = 0;
int respiratory = 0;
int hypertension = 0;
int immune = 0;
int age = 30;

class ListChecker extends StatefulWidget {
  @override
  _ListCheckerState createState() => _ListCheckerState();
}

class _ListCheckerState extends State<ListChecker> {
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
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AGE',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(
                                () {
                              age--;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'years',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Colors.blueAccent,
              cardChild: Column(
                children: [
                  Text(
                    'Cardio-Vascular disease',
                    style: kLargeButtonTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(
                                () {
                              if (cardio > 0)
                                cardio--;
                              else
                                cardio = 0;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            if (cardio < 1)
                              cardio++;
                            else
                              cardio = 1;
                          });
                        },
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        cardio.toString(),
                        style: kNumberTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Colors.blueAccent,
              cardChild: Column(
                children: [
                  Text(
                    'Respiratory disease',
                    style: kLargeButtonTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(
                                () {
                              if (respiratory > 0)
                                respiratory--;
                              else
                                respiratory = 0;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            if (respiratory < 1)
                              respiratory++;
                            else
                              respiratory = 1;
                          });
                        },
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        respiratory.toString(),
                        style: kNumberTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Colors.blueAccent,
              cardChild: Column(
                children: [
                  Text(
                    'Hypertension',
                    style: kLargeButtonTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(
                                () {
                              if (hypertension > 0)
                                hypertension--;
                              else
                                hypertension = 0;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            if (hypertension < 1)
                              hypertension++;
                            else
                              hypertension = 1;
                          });
                        },
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        hypertension.toString(),
                        style: kNumberTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Colors.blueAccent,
              cardChild: Column(
                children: [
                  Text(
                    'Immune related disease',
                    style: kLargeButtonTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPressed: () {
                          setState(
                                () {
                              if (immune > 0)
                                immune--;
                              else
                                immune = 0;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPressed: () {
                          setState(() {
                            if (immune < 1)
                              immune++;
                            else
                              immune = 1;
                          });
                        },
                      ),
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        immune.toString(),
                        style: kNumberTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Check',
            onTap: () {
              CalculatorBrain calc2 = CalculatorBrain(
                age: age,
                cardio_: cardio,
                respiratory_: respiratory,
                hyper_: hypertension,
                immune_: immune,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultChecker(
                    healthrisk: calc2.calculatehealth(),
                    heart: calc2.cardiodisease(),
                    respiratory: calc2.respiratorydisease(),
                    hypertension: calc2.hypertension(),
                    immune: calc2.immunedisease(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

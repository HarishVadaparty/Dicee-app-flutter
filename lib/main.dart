import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text('Simple Dice'),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  //Change the values of leftDice and rightDice
  // with a random number between 1 & 6 when
  //the "Roll Dice" button is clicked
  void changeDice() {
    var random = new Random();
    setState(() {
      leftDice = random.nextInt(6) + 1;
      rightDice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              changeDice();
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(
              'Roll the dice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

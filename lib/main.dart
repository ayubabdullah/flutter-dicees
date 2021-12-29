import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var _leftDiceNumber = 1;
  var _rightDiceNumber = 1;

  void _changeDiceNumber() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$_leftDiceNumber.png'),
              onPressed: () => _changeDiceNumber(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$_rightDiceNumber.png'),
              onPressed: () => _changeDiceNumber(),
            ),
          ),
        ],
      ),
    );
  }
}

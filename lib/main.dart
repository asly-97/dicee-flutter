import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage() : super();

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceNum = getNum();
  int leftDiceNum = getNum();

  static int getNum() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = getNum();
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 4,
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = getNum();
                });
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

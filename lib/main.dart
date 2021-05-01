import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// stateless widget
// class DicePage extends StatelessWidget {

// }

// stateful widget
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // create variable
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  // function
  int changeDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = changeDice();
                  print('diceNumber = $leftDiceNumber');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  // rightDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = changeDice();

                  print('diceNumber = $rightDiceNumber');
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

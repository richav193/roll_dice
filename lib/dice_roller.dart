import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6)+1;
    setState(() {
      // currentDiceRoll=diceRoll;
      // currentDiceRoll=Random().nextInt(6)+1;
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // activeDiceImage,
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
            // onPressed: (){
            //   //...
            // },
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/styled_text.dart';
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
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
            onPressed: rollDice,
            style:
                TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
            child: const StyledText('Roll Dice'))
      ],
    );
  }
}

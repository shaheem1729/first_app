import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceROllerState();
  }
}

class _DiceROllerState extends State<DiceRoller> {
  var activeImageDice = 'assets/imagess/dice-5.png';
  void rolldice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeImageDice = 'assets/imagess/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImageDice,
          width: 150,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 60),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('roll dice'),
        ),
      ],
    );
  }
}

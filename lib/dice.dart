import 'package:flutter/material.dart';
import 'dart:math';

// Generate Number between 1 - 6
int randomiser = Random().nextInt(6) + 1;

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var activeDiceImage = 'assets/images/dice$randomiser.png';

  void rollDice() {
    randomiser = Random().nextInt(6) + 1;
    setState(() => activeDiceImage = 'assets/images/dice$randomiser.png');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // Background Gradient
            Colors.orange.shade900,
            Colors.orange.shade700,
            Colors.orange.shade500,
            Colors.orange.shade300,
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 220,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

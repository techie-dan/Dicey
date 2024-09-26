import 'package:flutter/material.dart';
import 'dart:math';

final randomNumber = Random(); // Generate Number betwwen 1-6

class DiceRoller extends StatefulWidget{
 const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
 
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
 
  var currentDiceRoll = randomNumber.nextInt(6) + 1; // Generate random dice when app is launched.
  void rollDice(){
    setState((){
     currentDiceRoll = randomNumber.nextInt(6) + 1;  //  Generate random dice when 'Roll' Button is pressed.
    });
  }
   @override
  Widget build(context) {
   return  Column(
          mainAxisSize: MainAxisSize.min, // Set the vertical axis to center
          children: [
            Image.asset('assets/images/dice$currentDiceRoll.png', width: 180),
            const SizedBox(height: 20),
            TextButton(
                onPressed: rollDice,
                
                style: TextButton.styleFrom(
                 
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                  fontSize: 20,
                  ),
                ),
                child: const Text('Roll Dice'),
                ),
          ],
        );
   
  }
}


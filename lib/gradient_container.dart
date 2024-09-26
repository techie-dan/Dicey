import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

// Alignment for the gradient
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorNames, {super.key});
 
  final List<Color> colorNames; // Contains list of  gradient colors for the background container.

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colorNames,
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(
        child:  DiceRoller(),
         ),
    );
  }
}

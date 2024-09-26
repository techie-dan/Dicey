import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
   const  MaterialApp(
      home: Scaffold(
          body: GradientContainer( // Accepts the list of colors
        [ Color.fromARGB(255, 135, 133, 127),
          Color.fromARGB(255, 27, 26, 21),     
        ],
      )),
    ),
  );
}

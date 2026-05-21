import 'package:dice_app/dice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(body: Dice()),
      debugShowCheckedModeBanner: false,
    ),
  );
}

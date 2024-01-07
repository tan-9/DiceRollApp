import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key });
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
  
}

class _DiceRollerState extends State<DiceRoller>{
  final randomiser = Random();
  var currRoll = 2;

  void rollDice(){
  setState(() {
    currRoll = randomiser.nextInt(6)+1;
  });
}
  @override
  Widget build(context) {
   return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/dice-images/dice-$currRoll.png',
                    width: 215,
                  ),
                  const SizedBox(height: 30), //has fixed dimensions cannot be changed
                 TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                  textStyle: const TextStyle(
                    fontSize: 30,
                  )
                ),
                child: const Text('Roll Dice!'
                ),
              )
            ],
          );
  }
}

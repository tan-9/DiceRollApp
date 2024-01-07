// import 'package:demo/text_style.dart';

import 'package:demo/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientCont extends StatelessWidget{
  const GradientCont(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
            ),
            ),
            child: const Center(
              child: DiceRoller(),
        ),
      );
  }
}

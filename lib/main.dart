// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:demo/grad_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 180, 201),
        body: const GradientCont([Color.fromARGB(255, 125, 147, 214), Color.fromARGB(255, 126, 158, 255)])
        ),
      ),
    );
}


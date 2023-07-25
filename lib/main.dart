import 'package:flutter/material.dart';
import 'package:first/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 2, 101, 163),
        body: GradientContainer(
        Color.fromARGB(255, 33, 5, 109),
        Color.fromARGB(255, 68, 21, 149)
        ),
        // body: GradientContainer.purple(), 

      ),
    ),
  );
}



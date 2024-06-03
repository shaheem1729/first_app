import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 0, 255, 42),
            const Color.fromARGB(255, 255, 102, 0)),
      ),
    ),
  );
}

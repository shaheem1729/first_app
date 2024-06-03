import 'package:flutter/material.dart';

class TextWrite extends StatelessWidget {
  const TextWrite(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 60, 0, 255),
        fontSize: 29.5,
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.text, required this.textColor});
  final Color color;
  final String text;
  final Color textColor;
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () { },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 6.0),
          child: Text(text,
            style: TextStyle(
                fontSize: 20,
                color: textColor,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold
            ),),
        ));
  }
}

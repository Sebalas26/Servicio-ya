import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {

Function() onPressed;
String text;
Color backgroundcolor;
Color textcolor;

  Defaultbutton({
    required this.onPressed,
    required this.text,
    this.backgroundcolor = const Color.fromARGB(255, 255, 255, 255),
    this.textcolor = const Color.fromARGB(255, 0, 0, 0)
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
      ),
      child: Text(
        text,
        style: TextStyle(color: textcolor),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class Heading1Text extends StatelessWidget {
  String text = "";
  double size = 40;
  FontWeight fontWeight = FontWeight.bold;
  Color color = Colors.black;
  double wordSpacing = 5;
  VoidCallback? onClick = null;

   Heading1Text({
    required this.text, required this.size, required this.fontWeight, required this.color, required this.wordSpacing, required this.onClick,
  });

  Heading1Text.withText(this.text){
  }
  Heading1Text.withCallback(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top:5, right: 20, bottom:10),
      child: onClick == null
          ? Text(
        text,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: color,
          wordSpacing: wordSpacing,
        ),
      )
          : TextButton(
        onPressed: () {
          onClick?.call();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: size,
            fontWeight: fontWeight,
            color: color,
            wordSpacing: wordSpacing,
          ),
        ),
      ),
    );
  }
}
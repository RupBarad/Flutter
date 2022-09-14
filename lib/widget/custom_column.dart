import 'package:flutter/material.dart';

/*
This widget accepts a text and child as its properties displayed in the column.
 */

class CustomColumn extends StatelessWidget {

  CustomColumn({required this.text, required this.child});
  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        child
      ],
    );
  }

}
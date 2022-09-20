import 'package:flutter/material.dart';
import 'package:flutter_examples/widget/custom_text_form.dart';

class Base extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _BaseState();

}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 50, color: Colors.red);
  }

}
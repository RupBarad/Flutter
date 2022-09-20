import 'package:flutter/material.dart';

class CustomTextStyle {

  //Home description
  static TextStyle nameOfTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.grey[700],
    fontWeight: FontWeight.normal,
      fontFamily: 'Poppins'
  );

  //Home - translate
  static TextStyle labelOfTextStyle = const TextStyle(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: 'Poppins'
  );

  static TextStyle labelBOfTextStyle = const TextStyle(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins'
  );

  static TextStyle textFieldLabelTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Poppins'
  );

  static TextStyle textFieldTextStyle = const TextStyle(
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Poppins'
  );

}
import 'package:flutter/material.dart';

//DISPLAY SNACKBAR
void showInSnackBar(String value, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(value)));
  //_scaffoldKey.currentState!.showSnackBar();
}




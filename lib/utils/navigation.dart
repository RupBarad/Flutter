import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/module/home.dart';
import 'package:flutter_examples/ui/module/home/bottom_tab.dart';

void openTabScreen(BuildContext buildContext){
  //Move on tab screen
  Navigator.pushReplacement(
      buildContext,
      MaterialPageRoute(
          builder: (context) =>
              TabScreen()));
}

void openHomeScreen(BuildContext buildContext){
  Navigator.pushReplacement(buildContext, MaterialPageRoute(
      builder: (context) => HomeScreen()
  )
  );
}
import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/module/bottomnavigation/my_navigation_bar.dart';
import 'package:flutter_examples/ui/module/bottomnavigation/navigation_example2.dart';
import 'package:flutter_examples/ui/module/bottomnavigation/navigation_example3.dart';
import 'package:flutter_examples/ui/module/home.dart';
import 'package:flutter_examples/ui/module/home/bottom_tab.dart';

void openTabScreen(BuildContext buildContext){
  //Move on tab screen
  /*Navigator.popUntil(buildContext, (route) => route.isFirst);
  Navigator.pushReplacement(
      buildContext,
      MaterialPageRoute(
          builder: (context) =>
              TabScreen())
  );*/
  Navigator.pushAndRemoveUntil(
      buildContext,
      MaterialPageRoute(
          builder: (BuildContext context) =>
              TabScreen()),
          (Route<dynamic> route) => false);
  /*Navigator.pushAndRemoveUntil(
      buildContext,
      MaterialPageRoute(
          builder: (context) =>
              TabScreen()),
      ModalRoute.withName('/')
  );*/
}

void openHomeScreen(BuildContext buildContext){
  Navigator.pushReplacement(buildContext, MaterialPageRoute(
      builder: (context) => HomeScreen()
  )
  );
}

void openNavigation1Screen(BuildContext buildContext){
  Navigator.push(buildContext, MaterialPageRoute(
      builder: (context) => MyNavigationBar()
  )
  );
}

void openNavigation2Screen(BuildContext buildContext){
  Navigator.push(buildContext, MaterialPageRoute(
      builder: (context) => MyStatefulWidget()
  )
  );
}

void openNavigation3Screen(BuildContext buildContext){
  Navigator.push(buildContext, MaterialPageRoute(
      builder: (context) => HomePage()
  )
  );
}
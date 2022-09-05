import 'package:flutter/material.dart';
import 'package:flutter_examples/module/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



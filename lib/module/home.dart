import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Second screen")),
      body: Center(
          child:Text("Home page", textScaleFactor: 2,)
      ),
    );
  }

}
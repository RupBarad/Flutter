import 'package:flutter/material.dart';
import 'package:flutter_examples/module/auth/login.dart';
import 'dart:async';

import 'package:flutter_examples/module/home.dart';

class MySplashPage extends StatefulWidget {

  //createState(): When the Framework is instructed to build a StatefulWidget, it immediately calls createState()
  @override
  State<MySplashPage> createState(){
    print("Lifecycle: createState");
    return _MySplashPageState();
  }

}

class _MySplashPageState extends State<MySplashPage> {

  @override
  void initState() {
    super.initState();
    print("Lifecycle: initState");
    //Timer of duration 4 seconds(Timer function has 2 arguments,first is Duration and second is action to be performed).
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomeScreen()
                //LoginScreen()
            )
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        //child:FlutterLogo(size:MediaQuery.of(context).size.height)
         child: Image.asset(
           'assets/images/ac_logo.png',
           height: 100,
           width: 150,
           //fit: BoxFit.cover,
         )

    );

  }

}
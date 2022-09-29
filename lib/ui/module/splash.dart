import 'package:flutter/material.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_constant.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_helper.dart';

import 'dart:async';
import '../../utils/navigation.dart';

class MySplashPage extends StatefulWidget {

  //createState(): When the Framework is instructed to build a StatefulWidget, it immediately calls createState()
  @override
  State<MySplashPage> createState(){
    print("Lifecycle: createState");
    return _MySplashPageState();
  }

}

class _MySplashPageState extends State<MySplashPage> {
   bool isUserLogin = false;

  userLogin() async{
    //isUserLogin =
        SharedPreferenceHelper().getBooleanPref(SharedPreferenceConstants.IS_LOGIN_DONE).then((val)
    => {
          isUserLogin = val,
          print(val),
    });
  }

  @override
  void initState() {
    super.initState();
    print("Lifecycle: initState");
    startTime();
  }

  startTime() async {
    //Read and get value from shared preference
    userLogin();
    print("Lifecycle: initState isUserLogin $isUserLogin");

    //Timer
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    print("Lifecycle: initState route isUserLogin $isUserLogin");
    if(isUserLogin) {
      openTabScreen(context);
    }else{
      openHomeScreen(context);
    }
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
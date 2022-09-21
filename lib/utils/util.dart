

//DISPLAY SNACKBAR
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showInSnackBar(String value, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(value)));
  //_scaffoldKey.currentState!.showSnackBar();
}

/*
//CHECKS NETWORK AVAILABLE OR NOT
Future<bool> isNetworkAvailable() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
*/



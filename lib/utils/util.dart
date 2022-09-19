/*

import 'package:connectivity/connectivity.dart';

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

//DISPLAY SNACKBAR
void showInSnackBar(String value, GlobalKey<ScaffoldState> _scaffoldKey) {
  _scaffoldKey.currentState
      .showSnackBar(new SnackBar(content: new Text(value)));
}*/

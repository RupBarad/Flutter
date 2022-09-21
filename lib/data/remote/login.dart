import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_constant.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_helper.dart';
import 'package:http/http.dart';

class LoginAPI {

  String app = "app";
  String email = "email";
  String password = "password";
  String grantType = "grant_type";
  String grantTypePwd = "password";

  void login(String emailValue, String passwordValue, VoidCallback? onClick) async {
    try {
      Response response = await post(Uri.parse('https://dev.ident.services/api/v1/samedis.care/oauth/token'),
          //body: {app:"samedis.care",email: emailValue, password: passwordValue, grantType:grantTypePwd})
          headers: {
            'Accept': 'application/json',
          },
          body: {
            app:"samedis.care",email: emailValue, password: passwordValue, grantType:grantTypePwd
          })
      ;

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Login successfully');

        //Store Login details
        //SAVE DATA LOCALLY
        /*SharedPreferenceHelper().saveStringPref(
            SharedPreferenceConstants().USER_DATA, data);
        SharedPreferenceHelper().saveBooleanPref(
            SharedPreferenceConstants().IS_LOGIN_DONE, true);
        bool isLoginSaved = await SharedPreferenceHelper()
            .getBooleanPref(SharedPreferenceConstants().IS_LOGIN_DONE);*/

        onClick?.call();
      } else {
        print("failed ${response.statusCode}");
        onClick?.call();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

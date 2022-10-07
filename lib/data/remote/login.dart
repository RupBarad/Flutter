import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_constant.dart';
import 'package:flutter_examples/data/local/sharedpreference/sharedpreference_helper.dart';
import 'package:flutter_examples/utils/util.dart';
import 'package:http/http.dart';

class LoginAPI {

  String app = "app";
  String email = "email";
  String password = "password";
  String grantType = "grant_type";
  String grantTypePwd = "password";

  void login(BuildContext context,String emailValue, String passwordValue, VoidCallback? onClick) async {
    try {
      Response response = await post(Uri.parse('https://dev.ident.services/api/v1/samedis.care/oauth/token'),
          //body: {app:"samedis.care",email: emailValue, password: passwordValue, grantType:grantTypePwd})
          headers: {
            'Accept': 'application/json',
            "Access-Control-Allow-Origin": "*", // Required for CORS support to work
            "Access-Control-Allow-Credentials":
            'true', // Required for cookies, authorization headers with HTTPS
            "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
            "Access-Control-Allow-Methods": "POST, OPTIONS"
          },
          body: {
            app:"samedis.care",email: emailValue, password: passwordValue, grantType:grantTypePwd
          })
      ;

      print('response status code : ${response.statusCode}');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print('Data: $data');
        //print('Login successfully body : ${response.body.toString()}');

        //Manual serialization
        final parsedJson  = jsonDecode(response.body.toString());
        var jsonMeta = parsedJson['meta'];
        var msg = jsonMeta['msg'];
        var success = msg['success'] as bool;
        if(success) {
          var token = jsonMeta['token'];
          var refresh_token = jsonMeta['refresh_token'];
          var redirect_url = jsonMeta['redirect_url'];
          var app = jsonMeta['app'];
          print('token, $token !');
          print('refresh_token, $refresh_token !');
          print('redirect_url, $redirect_url !');
          print('app, $app !');

          var jsonData = parsedJson['data'];
          var userId = jsonData['id'];
          // print('jsonData, $jsonData !');
          print('userId, $userId !');
          var jsonAttributes = jsonData['attributes'];
          //print('jsonAttributes, $jsonAttributes !');
          var email = '${jsonAttributes['email']}';
          var first_name = '${jsonAttributes['first_name']}';
          var last_name = '${jsonAttributes['last_name']}';
          var username = '${jsonAttributes['username']}';
          var active = '${jsonAttributes['active']}';

          print('email, $email !');
          print('first_name, $first_name !');
          print('last_name, $last_name !');
          print('username, $username !');
          print('active, $active !');

          //Store Login details
          //SAVE DATA LOCALLY
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.USER_ID,userId );
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.USER_NAME, username);
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.USER_EMAIL, email);
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.USER_ACCESS_TOKEN, token);
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.USER_LANGUAGE, "");
          SharedPreferenceHelper().saveStringPref(SharedPreferenceConstants.APP, app);

          SharedPreferenceHelper().saveBooleanPref(SharedPreferenceConstants.IS_LOGIN_DONE, true);
          onClick?.call();
        }

      } else {
        final parsedJson  = jsonDecode(response.body.toString());
        if(response.statusCode == 401){
          var jsonMeta = parsedJson['meta'];
          var msg = jsonMeta['msg'];
          var success = msg['success'] as bool;
          print('jsonMeta: $jsonMeta');
          print('msg: $msg');
          print('success: $success');

          var message = msg['message'];
          print('message: $message');
          //showInSnackBar(message, context);
          showAppDialog(context, message);
        }
        print("failed ${response.statusCode}");
       // onClick?.call();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

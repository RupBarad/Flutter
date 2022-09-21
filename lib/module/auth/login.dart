import 'package:flutter/material.dart';
import 'package:flutter_examples/remote/login.dart';
import 'package:flutter_examples/utils/constant.dart';
import 'package:flutter_examples/utils/custom_text_style.dart';
import 'package:http/http.dart' as http;

import '../../widget/button_round.dart';
import '../../widget/custom_text_form.dart';
import '../../widget/heading2_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../base/base.dart';

class LoginScreen extends Base {

  @override
  _LoginState createState() => _LoginState();

}


class _LoginState extends State<LoginScreen> {

  //We will get this input data in two ways
  //1. TextEditingController
  //2. simple update value and store

  //But here, we will use 1. It's standard method
  String textEmail = "";
  final emailController = TextEditingController();

  String textPassword = "";
  final passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  getTextInputData(){
    setState(() {
      textEmail = emailController.text;
      textPassword = passwordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child:
      Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:const Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
    body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              children: [

                Column(
                  children: [
                    Heading2Text.withCallback(
                        AppLocalizations.of(context)!.loginTextLogin, null),

                    const SizedBox(height: 20),

                    Text(AppLocalizations.of(context)!.loginTextInfo,
                        style: CustomTextStyle.nameOfTextStyle),

                    const SizedBox(height: 30)
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40
                  ),
                  child: Form(
                    key: _formkey,
                    child: Column(
                    children: [
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextEmail,
                          textController: passwordController,
                          textInputType: TextInputType.emailAddress, validationName: FORM_FIELD_EMAIL ),
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextPassword,
                          isPassword: true,
                          textController: emailController,
                          validationName: FORM_FIELD_PASSWORD
                      ),
                      /*makeInput(label: AppLocalizations.of(context)!.loginTextEmail),
                      makeInput(label: AppLocalizations.of(context)!.loginTextPassword,obsureText: true),
                      CustomWidgets.textField('Corner Radius', cornerRadius: 10.0),
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextPassword, isPassword: true),*/
                    ],
                  )),
                ),


                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    //padding: EdgeInsets.only(top: 3,left: 3),
                    /*decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: const Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black)
                        )
                    ),*/
                    child: ButtonRound.withCallback(
                        AppLocalizations.of(context)!.login, () {

                          print("Sign up clicked Email: $textEmail Password: $textPassword");
                          //Get text input data
                          getTextInputData();

                          //Set validation
                          if (_formkey.currentState!.validate()) {
                          //check internet
                            print("Login API called");
                          /*LoginAPI().login(textEmail, textPassword, () {
                            print("Login API called");
                          }*/

                            //Store login credentials to check app login or not

                            //Close current screen and move on dashboard page


                      };

                    }),
                  ),
                ),

                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppLocalizations.of(context)!.loginTextNotAccount,
                        style: CustomTextStyle.labelOfTextStyle),
                    const SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        print("Sign up clicked");
                      },
                      child: Text(AppLocalizations.of(context)!.loginTextSignUp,
                        style: CustomTextStyle.labelBOfTextStyle,
                      ),
                    ),

                  ],
                )
              ],

            ),
          ],
        ),
      ),
      //Body end
    )
    ));
  }


}

/*
Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
      ),),
      const SizedBox(height: 5,),
      TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          print("The value entered is : $value");
        },
        obscureText: obsureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),
      ),
      const SizedBox(height: 30,)

    ],
  );
*/



/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Text Field'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              CustomWidgets.textField('Single-Line Text Field'),
              SizedBox(
                height: 10,
              ),
              CustomWidgets.textField('Multi-Line Text Filed', lines: 3),
              SizedBox(
                height: 10,
              ),
              CustomWidgets.textField('Password Field', isPassword: true),
              SizedBox(
                height: 10,
              ),
              CustomWidgets.textField('Number Password Field',
                  isPassword: true, isNumber: true, length: 10),
              SizedBox(
                height: 10,
              ),
              CustomWidgets.textField('Corner Radius', cornerRadius: 10.0),
            ],
          ),
        ),
      ),
    );
  }*/
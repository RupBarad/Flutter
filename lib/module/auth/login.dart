import 'package:flutter/material.dart';
import 'package:flutter_examples/widget/custom_text_style.dart';

import '../../widget/button_round.dart';
import '../../widget/custom_text_form.dart';
import '../../widget/heading2_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();

}


class _LoginState extends State<LoginScreen> {

  //We will get this input data in two ways
  //1. TextEditingController
  //2. simple update value and store

  //But here, we will use 1. It's standard method

  String textEmail = '';
  final textFieldEmailValueHolder = TextEditingController();

  String textPassword = '';
  final textFieldPasswordValueHolder = TextEditingController();

  getTextInputData(){
    setState(() {
      textEmail = textFieldEmailValueHolder.text;
      textPassword = textFieldPasswordValueHolder.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Column(
                    children: [
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextEmail,
                          textController: textFieldPasswordValueHolder,
                          textInputType: TextInputType.emailAddress ),
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextPassword,
                          isPassword: true,
                          textController: textFieldEmailValueHolder
                      ),
                      /*makeInput(label: AppLocalizations.of(context)!.loginTextEmail),
                      makeInput(label: AppLocalizations.of(context)!.loginTextPassword,obsureText: true),
                      CustomWidgets.textField('Corner Radius', cornerRadius: 10.0),
                      CustomWidgets.textField(AppLocalizations.of(context)!.loginTextPassword, isPassword: true),*/
                    ],
                  ),
                ),


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
                      getTextInputData();
                      print("Sign up clicked Email: $textEmail Password: $textPassword");
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
    );
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
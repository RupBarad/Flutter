import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_examples/utils/constant.dart';
import 'package:flutter_examples/widget/custom_text_style.dart';

class CustomWidgets {
  static Widget textField(String title,
      {bool isPassword = false,
        bool isNumber = false,
        int length = 100,
        TextEditingController? textController,
        int lines = 1,
        TextInputType textInputType = TextInputType.text,
        var cornerRadius = 0.0,
        var validationName = "email"
      }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: CustomTextStyle.textFieldLabelTextStyle,
          ),
          const SizedBox(
            height: 2,
          ),
          TextFormField(
            maxLines: lines,
            controller: textController,
            maxLength: length,
            textInputAction:TextInputAction.next,
            style: CustomTextStyle.textFieldTextStyle,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
            ],
            obscureText: isPassword,
            keyboardType: isNumber ? TextInputType.number : textInputType,
            decoration: InputDecoration(
                counterText: '',
                border: cornerRadius == 0
                    ? InputBorder.none
                    : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(cornerRadius),
                ),
                fillColor: const Color(0xfff3f3f4),
                filled: true),
              validator: (value) {
                if(validationName == FORM_FIELD_EMAIL) {
                  if (value == null || value
                      .trim()
                      .isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                }

                else if(validationName == FORM_FIELD_PASSWORD) {
                  if(value!.isEmpty)
                  {
                    return 'Please a Enter Password';
                  }
                  return null;
                }

                else if(validationName == FORM_FIELD_NAME) {
                  if(value!.isEmpty)
                  {
                    return 'Please Enter Name';
                  }
                  return null;
                }

                else if(validationName == FORM_FIELD_PHONE) {
                  if(value!.isEmpty)
                  {
                    return 'Please enter phone no ';
                  }
                  return null;
                }

                return null;
              }
            ,
          )
        ],
      ),
    );
  }
}
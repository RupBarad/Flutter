import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';
import 'app_strings.dart';

class CustomTextStyle {

  //Home description
  static TextStyle nameOfTextStyle = TextStyle(
    fontSize: 15,
    color: Colors.grey[700],
    fontWeight: FontWeight.normal,
      fontFamily: appFontFamily
  );

  //Home - translate
  static TextStyle labelOfTextStyle = const TextStyle(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: appFontFamily
  );

  static TextStyle labelBOfTextStyle = const TextStyle(
      fontSize: 15,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: appFontFamily
  );

  static TextStyle textFieldLabelTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: textFormFieldLabel,
      fontSize: formFieldTextLabel,
      fontFamily: appFontFamily
  );

  static TextStyle textFieldTextStyle = const TextStyle(
      fontWeight: FontWeight.normal,
      color: textFormFieldText,
      fontSize: formFieldText,
      fontFamily: appFontFamily
  );

}
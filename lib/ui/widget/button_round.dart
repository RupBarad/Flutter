
import 'package:flutter/material.dart';
import 'package:flutter_examples/utils/app_dimens.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/constant.dart';

class ButtonRound extends StatelessWidget {
  String text = "";
  double fontSize = buttonTextSize;
  FontWeight fontWeight = roundButtonTextWeight;
  Color? buttonColor = roundButtonBackground;
  Color? buttonTextColor = roundButtonText;
  double wordSpacing = 5;
  VoidCallback? onClick = null;

  double radius = 40;
  Color borderColor = Colors.black26;

  double buttonHeight = 50;
  double marginLeft = 10;
  double marginRight = 10;
  double marginTop = 5;
  double marginBottom = 10;

  ButtonRound.withText(this.text){
  }
  ButtonRound.withCallback(this.text, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(left: marginLeft, top:marginTop, right: marginRight, bottom:marginBottom),
      child:  MaterialButton(
        minWidth: MediaQuery.of(context).size.width/2,
        height: buttonHeight,
        onPressed: () {
          onClick?.call();
        },
        color: buttonColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(radius)),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: buttonTextColor,
              fontFamily: appFontFamily),
        ),
      )

    );
  }


}
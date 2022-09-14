
import 'package:flutter/material.dart';

class ButtonRound extends StatelessWidget {
  String text = "";
  double fontSize = 16;
  FontWeight fontWeight = FontWeight.w600;
  Color? buttonColor = Colors.red[300];
  Color? buttonTextColor = Colors.white;
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
              color: buttonTextColor),
        ),
      )

    );
  }


}
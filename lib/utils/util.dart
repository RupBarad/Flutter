import 'package:flutter/material.dart';
import 'package:flutter_examples/utils/custom_text_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//DISPLAY SNACKBAR
void showInSnackBar(String value, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(value)));
  //_scaffoldKey.currentState!.showSnackBar();
}

void showAppDialog(BuildContext context, String value) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.appName, style: CustomTextStyle.labelBOfTextStyle),
        content: Text(value),
        actions: <Widget>[
          TextButton(
            child: Text(AppLocalizations.of(context)!.btnOk, style: CustomTextStyle.labelOfTextStyle),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void hideKeyboard(){
  FocusManager.instance.primaryFocus?.unfocus();
}





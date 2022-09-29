import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/module/auth/login.dart';
import 'package:flutter_examples/ui/module/localize/LocalizationAppPage.dart';
import 'package:flutter_examples/ui/module/localize/LocalizationSystemPage.dart';
import 'package:flutter_examples/ui/widget/button_default.dart';
import 'package:flutter_examples/utils/custom_text_style.dart';
import 'package:flutter_examples/ui/widget/heading1_text.dart';
import 'package:flutter_examples/ui/widget/button_round.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<TabScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //appBar: AppBar(title:Text("Second screen")),
        body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          //Heading1Text.withText(AppLocalizations.of(context)!.helloWorld),
                          Heading1Text.withCallback(
                              AppLocalizations.of(context)!.helloWorld, () {
                            print("Click hello word");
                          }),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            AppLocalizations.of(context)!.homeInfo,
                            textAlign: TextAlign.center,
                            style: CustomTextStyle.nameOfTextStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),

                    ]))),
    )
    );
  }
}

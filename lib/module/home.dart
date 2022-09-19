import 'package:flutter/material.dart';
import 'package:flutter_examples/module/auth/login.dart';
import 'package:flutter_examples/module/localize/LocalizationAppPage.dart';
import 'package:flutter_examples/module/localize/LocalizationSystemPage.dart';
import 'package:flutter_examples/widget/button_default.dart';
import 'package:flutter_examples/widget/custom_text_style.dart';
import 'package:flutter_examples/widget/heading1_text.dart';
import 'package:flutter_examples/widget/button_round.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {

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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              AppLocalizations.of(context)!.translate,
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.labelOfTextStyle,
                            ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(children: [
                                ButtonDefault.withCallback(
                                    AppLocalizations.of(context)!.pageSystemLocalizeTitle, () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LocalizationSystemPage()));
                                }),
                                ButtonDefault.withCallback(
                                    AppLocalizations.of(context)!.pageAppLocalizeTitle, () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LocalizationAppPage()));
                                })
                              ]),

                            ],
                          )
                          ,


                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: const BoxDecoration(
                            //image:DecorationImage(image: AssetImage('assets/images/atharvasystem.jpg'))
                            //image:DecorationImage(image: AssetImage('assets/images/atharva_system.png'))
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/ac_logo.png'))),
                      ),
                      /*CustomButton(
                        onTap: () {
                          //print('custom button click');
                          setState(() {
                            weight = weight - 1;
                          });
                        },
                        icon: Icons.arrow_downward,
                      ),*/
                      //Login button
                      ButtonRound.withCallback(
                          AppLocalizations.of(context)!.login, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }),
                      //Sign up
                      ButtonRound.withCallback(
                          AppLocalizations.of(context)!.signUp, () {
                        print("Sign up button click");
                        /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));*/
                      }),
                    ]))),
    )
    );
  }
}

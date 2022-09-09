import 'package:flutter/material.dart';
import 'package:flutter_examples/module/auth/login.dart';
import 'package:flutter_examples/module/localize/LocalizationSystemPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title:Text("Second screen")),
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.helloWorld,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Automatic identity verification which enable you to verify your identity",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 15),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            minWidth: double.minPositive,
                            height: 40,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LocalizationSystemPage()));
                            },
                            color: Colors.white,
                           /* shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),*/
                            child: Text(
                              AppLocalizations.of(context)!.pageSystemLocalizeTitle,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          )
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
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        color: Colors.indigoAccent[400],
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white70),
                        ),
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: const Text(
                          "Sign UP",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]))));
  }
}

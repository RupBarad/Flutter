import 'package:flutter/material.dart';
import 'package:flutter_examples/l10n/l10n.dart';
import 'package:flutter_examples/module/splash.dart';
import 'package:flutter_examples/provider/locale_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => LocaleProvider(),
    builder: (context, child) {
      final provider = Provider.of<LocaleProvider>(context);

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple.shade100,
          primaryColor: Colors.deepPurpleAccent,
          fontFamily: 'Roboto'
        ),
        locale: provider.locale,
        supportedLocales: L10n.all,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        home: MySplashPage(),
      );
    },
  );
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: MySplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }*/
}



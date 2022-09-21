import 'package:flutter/material.dart';
import 'package:flutter_examples/main.dart';
import 'package:flutter_examples/ui/widget/language_picker_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationSystemPage extends StatefulWidget {
  @override
  _LocalizationSystemPageState createState() => _LocalizationSystemPageState();
}

class _LocalizationSystemPageState extends State<LocalizationSystemPage> {
  @override
  void initState() {
    super.initState();

    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<LocaleProvider>(context, listen: false);

      provider.clearLocale();
    });*/
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(AppLocalizations.of(context)!.pageSystemLocalizeTitle),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LanguageWidget(),
          const SizedBox(height: 32),
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            AppLocalizations.of(context)!.helloWorld,
            style: TextStyle(fontSize: 36),
          ),
        ],
      ),
    ),
  );
}
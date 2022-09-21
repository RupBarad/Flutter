import 'package:flutter/material.dart';
import 'package:flutter_examples/ui/widget/language_picker_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationAppPage extends StatefulWidget {
  @override
  _LocalizationAppPageState createState() => _LocalizationAppPageState();
}

class _LocalizationAppPageState extends State<LocalizationAppPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(AppLocalizations.of(context)!.pageAppLocalizeTitle),
      centerTitle: true,
      actions: [
        LanguagePickerWidget(),
        const SizedBox(width: 20),
      ],
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
            AppLocalizations.of(context)!.hello('John'),
            style: TextStyle(fontSize: 36),
          ),
        ],
      ),
    ),
  );
}
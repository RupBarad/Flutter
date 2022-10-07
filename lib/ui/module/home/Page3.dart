import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_examples/utils/custom_text_style.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child:
        Text(
          AppLocalizations.of(context)!.tab3Content,
          textAlign: TextAlign.center,
          style: CustomTextStyle.nameOfTextStyle,
        ),
      ),
    );
  }
}
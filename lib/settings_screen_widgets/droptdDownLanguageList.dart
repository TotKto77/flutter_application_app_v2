import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/repo/repo_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "../localizations/custom_localization.dart";
//import 'package:flutter_localizations/flutter_localizations.dart';
//import '../settings_screen.dart';

class SelectLanguageDropDownList extends StatefulWidget {
  const SelectLanguageDropDownList({Key? key}) : super(key: key);

  @override
  State<SelectLanguageDropDownList> createState() =>
      _SelectLanguageDropDownListState();
}

class _SelectLanguageDropDownListState
    extends State<SelectLanguageDropDownList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: "en", // Измените на "en"
          items: [
            DropdownMenuItem(
              value: "en",
              child: Text(
                AppLocalizations.of(context)!.english,
              ),
            ),
            DropdownMenuItem(
              value: "ru",
              child: Text(AppLocalizations.of(context)!.russian),
            ),
          ],
          onChanged: (value) async {
            if (value == null) return;
            if (value == 'ru') {
              await CustomLocalizations.load(
                const Locale("ru"),
                //TODO ас контекст не коректная форма надо изменить
              );
              setState(() {});
            } else if (value == 'en') {
              await AppLocalizations.of(
                const Locale("en")
                    as BuildContext, //TODO ас контекст не коректная форма надо изменить
              );
              setState(() {});
            }
            RepoSetings().saveLocale(value);
          },
        )
      ],
    );
  }
}

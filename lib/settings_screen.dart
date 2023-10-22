import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import './constants/app_colors.dart';
import 'constants/app_styles.dart';
import './settings_screen_widgets/droptdDownLanguageList.dart'; // Предполагаю, что это правильное название файла

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.settings,
                  style: AppStyles.settingsS20w500,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}

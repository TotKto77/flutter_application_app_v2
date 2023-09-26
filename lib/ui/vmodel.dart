import 'package:flutter/material.dart';
import '../homscreenWidgets/characters_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants/app_assets.dart';
import '../constants/app_styles.dart';
import 'package:intl/intl.dart';

class PersonsListVmodel with ChangeNotifier {
  bool isListView = true;

  static int? length;
  void switchView() {
    isListView = !isListView;
    notifyListeners();
  }

  final personList = [
    ..._list,
    ..._list,
    ..._list,
    ..._list,
  ];

  static map(Container Function(dynamic character) param0) {}
}

final _list = [
  Character(
    name: 'Рик Санчез',
    species: AppLocalizations.
    status: AppLocalizations.current.alive,
    gender: AppLocalizations.current.male,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
];

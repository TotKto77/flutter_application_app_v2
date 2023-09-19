import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../constants/app_styles.dart';

class Character {
  final String name;
  final String species;
  final String gender;
  final bool status;
  final String avatar;
  final TextStyle nameTextStyle;
  final TextStyle speciesTextStyle;
  final TextStyle sstatusTextStyle;

  Character({
    required this.name,
    required this.species,
    required this.gender,
    required this.status,
    required this.avatar,
    required this.nameTextStyle,
    required this.speciesTextStyle,
    required this.sstatusTextStyle,
  });
}

final List<Character> characters = [
  Character(
    name: 'Рик Санчез',
    species: 'Человек',
    gender: 'Мужской',
    status: true,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
  Character(
    name: 'Морти Смит',
    species: 'Человек',
    gender: 'Мужской',
    status: true,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
  Character(
    name: 'Саммер Смит',
    species: 'Человек',
    gender: 'Женский',
    status: true,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
  Character(
    name: 'Альберт Энштейн',
    species: 'Человек',
    gender: 'Мужской',
    status: false,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
  Character(
    name: 'Алан Рейлс',
    species: 'Человек',
    gender: 'Мужской',
    status: false,
    avatar: AppAssets.images.noAvatar,
    nameTextStyle: AppStyles.mainS16w500,
    speciesTextStyle: AppStyles.detailS12w400,
    sstatusTextStyle: const TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    ),
  ),
];

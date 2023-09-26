import 'package:flutter/material.dart';

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

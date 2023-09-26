import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CustomLocalizations {
  CustomLocalizations(this.locale);

  final Locale locale;

  static CustomLocalizations? of(BuildContext context) {
    return Localizations.of<CustomLocalizations>(context, CustomLocalizations);
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      "language": "Language",
      "login": "Login",
      "password": "Password",
      "singIn": "Sign In",
      "logScreenQest": "Do you have an account?",
      "create": "Create",
      "loginLengh": "The login must contain at least 3 symbols",
      "passwordLengh": "The password must hold at least 8 symbols",
      "error": "Error",
      "alertMessage": "Invalid login or password entered",
      "russian": "Russian",
      "english": "English",
      "settings": "Settings",
      "man": "Human",
      "alien": "Alien",
      "female": "Female",
      "male": "Male",
      "alive": "Alive",
      "death": "Death"
    },
    'es': {
      "language": "Язык",
      "login": "Логин",
      "password": "Пароль",
      "singIn": "Вход",
      "logScreenQest": "У вас ещё нет аккаунта?",
      "create": "Создать",
      "loginLengh": "Логин должен содержать не менее 3 символов",
      "passwordLengh": "Пароль должен содержать не менее 8 символов",
      "error": "Ошибка",
      "alertMessage": "Введён неверный логин или пароль",
      "russian": "Русский",
      "english": "Английский",
      "settings": "Настройки",
      "man": "Человек",
      "alien": "Инопланетянин",
      "female": "Женщина",
      "male": "Мужчина",
      "alive": "Живой",
      "death": "Мёртвый"
    },
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get death {
    return _localizedValues[locale.languageCode]!['death']!;
  }

  String get alive {
    return _localizedValues[locale.languageCode]!['alive']!;
  }

  String get female {
    return _localizedValues[locale.languageCode]!['female']!;
  }

  String get alien {
    return _localizedValues[locale.languageCode]!['alien']!;
  }

  String get man {
    return _localizedValues[locale.languageCode]!['man']!;
  }

  String get settings {
    return _localizedValues[locale.languageCode]!['settings']!;
  }

  String get english {
    return _localizedValues[locale.languageCode]!['english']!;
  }

  String get alertMessage {
    return _localizedValues[locale.languageCode]!['alertMessage']!;
  }

  String get russian {
    return _localizedValues[locale.languageCode]!['russian']!;
  }

  String get error {
    return _localizedValues[locale.languageCode]!['error']!;
  }

  String get passwordLength {
    return _localizedValues[locale.languageCode]!['passwordLengh']!;
  }

  String get loginLength {
    return _localizedValues[locale.languageCode]!['loginLengh']!;
  }

  String get create {
    return _localizedValues[locale.languageCode]!['create']!;
  }

  String get logScreenQuest {
    return _localizedValues[locale.languageCode]!['logScreenQest']!;
  }

  String get signIn {
    return _localizedValues[locale.languageCode]!['singIn']!;
  }

  String get password {
    return _localizedValues[locale.languageCode]!['password']!;
  }

  String get login {
    return _localizedValues[locale.languageCode]!['login']!;
  }

  String get language {
    return _localizedValues[locale.languageCode]!['language']!;
  }
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  const CustomLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      CustomLocalizations.languages().contains(locale.languageCode);

  @override
  Future<CustomLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<CustomLocalizations>(CustomLocalizations(locale));
  }

  @override
  bool shouldReload(CustomLocalizationsDelegate old) => false;
}

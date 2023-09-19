import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Импорт нужной библиотеки для Locale
import './splash_Screen.dart';
import './constants/app_styles.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './repo/repo_settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Прозрачная панель состояния
      statusBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );

  final repoSetings = RepoSetings();
  await repoSetings.init();
  var defaultLocale = const Locale("ru");
  final locale = await repoSetings.readLocale();
  if (locale == "en") {
    defaultLocale = const Locale("en");
  }

  runApp(MyApp(locale: defaultLocale));
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
    required this.locale,
  }) : super(key: key);
  final Locale locale;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: widget.locale, // Use the locale from the widget
      supportedLocales: AppLocalizations.supportedLocales, // Fixed typo
      home: const SplashScreen(),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedLabelStyle: AppStyles.detailS12w400,
          selectedLabelStyle: AppStyles.detailS12w400,
        ),
      ),
    );
  }
}

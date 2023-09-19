import 'package:shared_preferences/shared_preferences.dart';

class RepoSetings {
  RepoSetings._();
  static final _instance = RepoSetings._();
  factory RepoSetings() => _instance;

  SharedPreferences? prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<bool?> saveLocale(String locale) async {
    return prefs?.setString("locale", locale);
  }

  Future<String?> readLocale() async {
    return prefs?.getString("locle");
  }
}

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import "package:shared_preferences/shared_preferences.dart";

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.

@Singleton()
class SettingsRepository {
  // late SharedPreferences _sharedPreferences;

  // SettingsRepository() {
  //   SharedPreferences.getInstance().then((prefs) => _sharedPreferences = prefs);
  // }
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  /// Loads the User's preferred ThemeMode from local or remote storage.

  Future<Locale> currentLocale() async {
    String savedLocale = (await prefs).getString("locale") ?? "en";

    return Locale(savedLocale, "");
  }

  Future<ThemeMode> themeMode() async {
    String savedTheme = (await prefs).getString("theme") ?? "system";

    if (savedTheme == "system") {
      return ThemeMode.system;
    } else if (savedTheme == "light") {
      return ThemeMode.light;
    } else {
      return ThemeMode.dark;
    }
  }

  /// Persists the user's preferred ThemeMode of Locale to local storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    if (theme == ThemeMode.system) (await prefs).setString("theme", "system");
    if (theme == ThemeMode.light) (await prefs).setString("theme", "light");
    if (theme == ThemeMode.dark) (await prefs).setString("theme", "dark");
  }

  Future<void> updateLocale(Locale locale) async {
    (await prefs).setString("locale", locale.languageCode);
  }
}

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import "package:shared_preferences/shared_preferences.dart";

/// A repository that stores and retrieves user settings.

@injectable
class SettingsRepository {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  /// Loads the saved locale from local storage, defaults to english

  Future<Locale> currentLocale() async {
    String savedLocale = (await prefs).getString("locale") ?? "en";

    return Locale(savedLocale, "");
  }

  Future<ThemeMode> themeMode() async {
    /// Loads saved theme. Defaults to "system"
    String savedTheme = (await prefs).getString("theme") ?? "system";

    if (savedTheme == "darkMode") {
      return ThemeMode.dark;
    } else if (savedTheme == "lightMode") {
      return ThemeMode.light;
    } else {
      return ThemeMode.system;
    }
  }

  /// Persists the user's preferred settings to local storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    if (theme == ThemeMode.system) (await prefs).setString("theme", "system");
    if (theme == ThemeMode.light) (await prefs).setString("theme", "lightMode");
    if (theme == ThemeMode.dark) (await prefs).setString("theme", "darkMode");
  }

  Future<void> updateLocale(Locale locale) async {
    (await prefs).setString("locale", locale.languageCode);
  }
}

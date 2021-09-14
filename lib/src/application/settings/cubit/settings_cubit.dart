import 'package:bloc/bloc.dart';
import 'package:boilerpalta/src/dependency_injection/injection.dart';
import 'package:boilerpalta/src/infrastructure/settings/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@Injectable()
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  final SettingsRepository _settingsRepository = getIt<SettingsRepository>();

  Future<void> loadSettings() async {
    try {
      final _themeMode = await _settingsRepository.themeMode();
      final _locale = await _settingsRepository.currentLocale();
      emit(SettingsState.loaded(_themeMode, _locale));
    } catch (err) {
      emit(const SettingsState.error(
          "Couldn't fetch location. Is the device online?"));
    }
  }

  Future<void> updateLocale(Locale? newLocale) async {
    ThemeMode _themeMode = await _settingsRepository.themeMode();
    Locale _locale = await _settingsRepository.currentLocale();

    if (newLocale == null) return;
    // Dot not perform any work if new and old ThemeMode are identical
    if (newLocale == _locale) return;

    try {
      emit(const SettingsState.saving());
      _settingsRepository.updateLocale(newLocale);
      emit(SettingsState.loaded(_themeMode, newLocale));
    } catch (err) {
      emit(const SettingsState.error("Unknown error"));
    }
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    ThemeMode _themeMode = await _settingsRepository.themeMode();
    final _locale = await _settingsRepository.currentLocale();

    if (newThemeMode == null) return;
    // Dot not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    try {
      emit(const SettingsState.saving());
      _settingsRepository.updateThemeMode(newThemeMode);
      emit(SettingsState.loaded(newThemeMode, _locale));
    } catch (err) {
      emit(const SettingsState.error("Unknown error"));
    }
  }
}

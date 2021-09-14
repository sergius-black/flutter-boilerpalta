import 'package:bloc/bloc.dart';
import 'package:boilerpalta/src/dependency_injection/injection.dart';
import 'package:boilerpalta/src/infrastructure/settings/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  //inject settings repository
  final SettingsRepository _settingsRepository = getIt<SettingsRepository>();

  Future<void> loadSettings() async {
    try {
      final _themeMode = await _settingsRepository.themeMode();
      final _locale = await _settingsRepository.currentLocale();
      emit(SettingsState.loaded(_themeMode, _locale));
    } catch (err) {
      emit(const SettingsState.error("Error message here"));
    }
  }

  Future<void> updateLocale(Locale? newLocale) async {
    final _themeMode = await _settingsRepository.themeMode();
    final _locale = await _settingsRepository.currentLocale();

    if (newLocale == null) return;
    // Dot not perform any work if new and old ThemeMode are identical
    if (newLocale == _locale) return;

    try {
      emit(const SettingsState.saving());
      _settingsRepository.updateLocale(newLocale);
      emit(SettingsState.loaded(_themeMode, newLocale));
    } catch (err) {
      emit(const SettingsState.error("Error message here"));
    }
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    final _themeMode = await _settingsRepository.themeMode();
    final _locale = await _settingsRepository.currentLocale();

    // Dot not perform any work if null or new and old ThemeMode are identical
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;

    try {
      emit(const SettingsState.saving());
      _settingsRepository.updateThemeMode(newThemeMode);
      emit(SettingsState.loaded(newThemeMode, _locale));
    } catch (err) {
      emit(const SettingsState.error("Error message here"));
    }
  }
}

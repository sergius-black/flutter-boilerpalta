part of 'settings_cubit.dart';

// Freezed Union types for BLoC states because reasons
@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = SettingsInitial;
  const factory SettingsState.loaded(ThemeMode themeMode, Locale locale) =
      SettingsLoaded;
  const factory SettingsState.saving() = SettingsSaving;
  const factory SettingsState.error(String error) = SettingsError;
}

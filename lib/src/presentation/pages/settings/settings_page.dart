import 'package:boilerpalta/src/application/settings/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsCubit is updated and
/// Widgets that listen to SettingsCubit are rebuilt.
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String appBarTitle = AppLocalizations.of(context)!.settingsTitle;

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoaded) {
            return Padding(
              padding: const EdgeInsets.all(16),
              // Glue the SettingsCubit to the theme and locale selection DropdownButtons.
              //
              // When a user selects a theme or locale from the dropdown lists, the
              // SettingsCubit is updated, which rebuilds the MaterialApp.
              child: Column(
                children: [
                  DropdownButton<Locale>(
                    // Read the selected Locale from the cubit state
                    value: state.locale,

                    // Call updateLocale method any time the user selects a locale.
                    onChanged: context.read<SettingsCubit>().updateLocale,

                    items: const [
                      DropdownMenuItem(
                        value: Locale("en", ""),
                        child: Text('English'),
                      ),
                      DropdownMenuItem(
                        value: Locale("es", ""),
                        child: Text('Español'),
                      )
                    ],
                  ),
                  DropdownButton<ThemeMode>(
                    // Read the selected themeMode from the cubit state
                    value: state.themeMode,

                    // Call the updateThemeMode method any time the user selects a theme.
                    onChanged: context.read<SettingsCubit>().updateThemeMode,

                    items: const [
                      DropdownMenuItem(
                        value: ThemeMode.system,
                        child: Text('System Theme'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.light,
                        child: Text('Light Theme'),
                      ),
                      DropdownMenuItem(
                        value: ThemeMode.dark,
                        child: Text('Dark Theme'),
                      )
                    ],
                  ),
                ],
              ),
            );
          } else {
            // If SettingsCubit is in any state other that SettingsLoaded, some error must have happened
            return const Center(
              child: Text("Some error happened"),
            );
          }
        },
      ),
    );
  }
}

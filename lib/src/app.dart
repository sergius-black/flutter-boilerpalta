import 'package:boilerpalta/src/application/settings/cubit/settings_cubit.dart';
import 'package:boilerpalta/src/dependency_injection/injection.dart';
import 'package:boilerpalta/src/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// The Widget that configures your application.
class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter();
  final _settingsCubit = getIt<SettingsCubit>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _settingsCubit)
              // BlocProvider<ThemeCubit>(
              //   create: (BuildContext context) => ThemeCubit(),
              // )
            ],
            child: BlocBuilder<SettingsCubit, SettingsState>(
              bloc: _settingsCubit,
              builder: (context, state) {
                if (state is SettingsLoaded) {
                  return MaterialApp.router(
                    routerDelegate: _router.delegate(),
                    routeInformationParser: _router.defaultRouteParser(),

                    // Provide the generated AppLocalizations to the MaterialApp. This
                    // allows descendant Widgets to display the correct translations
                    // depending on the user's locale.
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: state.locale,
                    supportedLocales: const [
                      Locale('en', ''), // English, no country code
                      Locale('es', ''), // Español, sin codigo de pais
                    ],

                    // Use AppLocalizations to configure the correct application title
                    // depending on the user's locale.
                    //
                    // The appTitle is defined in .arb files found in the localization
                    // directory.
                    onGenerateTitle: (BuildContext context) =>
                        AppLocalizations.of(context)!.appTitle,

                    // Define a light and dark color theme. Then, read the user's
                    // preferred ThemeMode (light, dark, or system default) from the
                    // SettingsController to display the correct theme.
                    theme: ThemeData(),
                    darkTheme: ThemeData.dark(),
                    themeMode: state.themeMode,

                    // Define a function to handle named routes in order to support
                    // Flutter web url navigation and deep linking.
                  );
                } else {
                  _settingsCubit.loadSettings();

                  return const CircularProgressIndicator();
                }
              },
            ),
          );
        });
  }
}

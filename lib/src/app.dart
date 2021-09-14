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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Awaits for all (non-lazy) injection modules to complete loading then builds the main app
    return FutureBuilder(
        future: getIt.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //Global scope bloc providers here
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => SettingsCubit(),
              )
            ],
            child: BlocBuilder<SettingsCubit, SettingsState>(
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

                    // Read current saved locale from the SettingsCubit state
                    locale: state.locale,
                    supportedLocales: const [
                      Locale('en', ''), // English, no country code
                      Locale('es', ''), // Español, sin código de país
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
                    // SettingsCubit state to display the correct theme.
                    theme: ThemeData(),
                    darkTheme: ThemeData.dark(),
                    themeMode: state.themeMode,
                  );
                } else {
                  // If SettingsCubit state is anything else than SettingsLoaded,
                  // it calls the cubit's loadSettings method to load saved settings
                  context.read<SettingsCubit>().loadSettings();

                  return const CircularProgressIndicator();
                }
              },
            ),
          );
        });
  }
}

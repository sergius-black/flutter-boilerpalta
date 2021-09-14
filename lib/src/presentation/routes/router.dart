import 'package:auto_route/annotations.dart';
import 'package:boilerpalta/src/presentation/pages/sample_feature/sample_item_details_view.dart';
import 'package:boilerpalta/src/presentation/pages/sample_feature/sample_item_list_view.dart';
import 'package:boilerpalta/src/presentation/pages/settings/settings_view.dart';
import 'package:boilerpalta/src/presentation/pages/splash/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: SampleItemListView),
    AutoRoute(page: SampleItemDetailsView),
    AutoRoute(page: SettingsView),
  ],
)
class $AppRouter {}

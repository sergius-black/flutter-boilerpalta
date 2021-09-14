import 'package:auto_route/annotations.dart';
import 'package:boilerpalta/src/presentation/pages/sample_feature/sample_item_details_page.dart';
import 'package:boilerpalta/src/presentation/pages/sample_feature/sample_item_list_page.dart';
import 'package:boilerpalta/src/presentation/pages/settings/settings_page.dart';
import 'package:boilerpalta/src/presentation/pages/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/splash', page: SplashScreen, initial: true),
    AutoRoute(path: '/', page: SampleItemListPage),
    AutoRoute(path: '/sample_item', page: SampleItemDetailsPage),
    AutoRoute(path: '/settings', page: SettingsPage),
  ],
)
class $AppRouter {}

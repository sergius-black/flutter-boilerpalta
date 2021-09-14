// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/sample_feature/sample_item_details_view.dart' as _i5;
import '../pages/sample_feature/sample_item_list_view.dart' as _i4;
import '../pages/settings/settings_view.dart' as _i6;
import '../pages/splash/splash.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    SampleItemListViewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SampleItemListView();
        }),
    SampleItemDetailsViewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SampleItemDetailsView();
        }),
    SettingsViewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.SettingsView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(SampleItemListViewRoute.name,
            path: '/sample-item-list-view'),
        _i1.RouteConfig(SampleItemDetailsViewRoute.name,
            path: '/sample-item-details-view'),
        _i1.RouteConfig(SettingsViewRoute.name, path: '/settings-view')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class SampleItemListViewRoute extends _i1.PageRouteInfo<void> {
  const SampleItemListViewRoute() : super(name, path: '/sample-item-list-view');

  static const String name = 'SampleItemListViewRoute';
}

class SampleItemDetailsViewRoute extends _i1.PageRouteInfo<void> {
  const SampleItemDetailsViewRoute()
      : super(name, path: '/sample-item-details-view');

  static const String name = 'SampleItemDetailsViewRoute';
}

class SettingsViewRoute extends _i1.PageRouteInfo<void> {
  const SettingsViewRoute() : super(name, path: '/settings-view');

  static const String name = 'SettingsViewRoute';
}

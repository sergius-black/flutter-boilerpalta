// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/sample_feature/sample_item_details_page.dart' as _i5;
import '../pages/sample_feature/sample_item_list_page.dart' as _i4;
import '../pages/settings/settings_page.dart' as _i6;
import '../pages/splash/splash.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Splash.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.Splash();
        }),
    SampleItemListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SampleItemListPage();
        }),
    SampleItemDetailsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SampleItemDetailsPage();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.SettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Splash.name, path: '/'),
        _i1.RouteConfig(SampleItemListRoute.name, path: '/list'),
        _i1.RouteConfig(SampleItemDetailsRoute.name, path: '/sample_item'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings')
      ];
}

class Splash extends _i1.PageRouteInfo<void> {
  const Splash() : super(name, path: '/');

  static const String name = 'Splash';
}

class SampleItemListRoute extends _i1.PageRouteInfo<void> {
  const SampleItemListRoute() : super(name, path: '/list');

  static const String name = 'SampleItemListRoute';
}

class SampleItemDetailsRoute extends _i1.PageRouteInfo<void> {
  const SampleItemDetailsRoute() : super(name, path: '/sample_item');

  static const String name = 'SampleItemDetailsRoute';
}

class SettingsRoute extends _i1.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '/settings');

  static const String name = 'SettingsRoute';
}

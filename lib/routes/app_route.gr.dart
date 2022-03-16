// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../presentation/home/home_page.dart' as _i3;
import '../presentation/login_page/login_page.dart' as _i1;
import '../presentation/registro/registro_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.LoginPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RegistroRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.RegistroPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i4.RouteConfig(LoginRoute.name, path: '/login'),
        _i4.RouteConfig(RegistroRoute.name, path: '/registro'),
        _i4.RouteConfig(HomeRoute.name, path: '/menu')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.RegistroPage]
class RegistroRoute extends _i4.PageRouteInfo<void> {
  const RegistroRoute() : super(RegistroRoute.name, path: '/registro');

  static const String name = 'RegistroRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/menu');

  static const String name = 'HomeRoute';
}

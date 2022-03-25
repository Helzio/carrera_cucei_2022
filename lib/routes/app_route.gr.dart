// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../presentation/home/home_page.dart' as _i4;
import '../presentation/login_page/login_page.dart' as _i1;
import '../presentation/registro/registro_page.dart' as _i3;
import '../presentation/splash/splash_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.LoginPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SplashRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RegistroRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.RegistroPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          opaque: false,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/login'),
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(RegistroRoute.name, path: '/registro'),
        _i5.RouteConfig(HomeRoute.name, path: '/menu')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.RegistroPage]
class RegistroRoute extends _i5.PageRouteInfo<void> {
  const RegistroRoute() : super(RegistroRoute.name, path: '/registro');

  static const String name = 'RegistroRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/menu');

  static const String name = 'HomeRoute';
}

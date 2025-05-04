// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../screens/Auth/login_screen.dart' as _i1;
import '../pages/bottom_nav_bar.dart' deferred as _i2;
import '../pages/home_screen.dart' as _i3;
import '../pages/profile_screen.dart' as _i4;
import '../pages/settings_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    BottomNavBar.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.BottomNavBar(),
        ),
      );
    },
    HomeScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
      );
    },
    SettingsScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          LoginScreen.name,
          path: '/',
        ),
        _i6.RouteConfig(
          BottomNavBar.name,
          path: '/bottomMenu',
          deferredLoading: true,
          children: [
            _i6.RouteConfig(
              HomeScreen.name,
              path: 'home',
              parent: BottomNavBar.name,
            ),
            _i6.RouteConfig(
              ProfileScreen.name,
              path: 'profile',
              parent: BottomNavBar.name,
            ),
            _i6.RouteConfig(
              SettingsScreen.name,
              path: 'settings',
              parent: BottomNavBar.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreen extends _i6.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i2.BottomNavBar]
class BottomNavBar extends _i6.PageRouteInfo<void> {
  const BottomNavBar({List<_i6.PageRouteInfo>? children})
      : super(
          BottomNavBar.name,
          path: '/bottomMenu',
          initialChildren: children,
        );

  static const String name = 'BottomNavBar';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: 'home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileScreen extends _i6.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsScreen extends _i6.PageRouteInfo<void> {
  const SettingsScreen()
      : super(
          SettingsScreen.name,
          path: 'settings',
        );

  static const String name = 'SettingsScreen';
}

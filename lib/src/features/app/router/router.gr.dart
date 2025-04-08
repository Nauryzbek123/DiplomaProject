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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/bottom_nav_bar.dart' deferred as _i1;
import '../pages/home_screen.dart' as _i2;
import '../pages/profile_screen.dart' as _i3;
import '../pages/settings_screen.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BottomNavBar.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.BottomNavBar(),
        ),
      );
    },
    HomeScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    SettingsScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          BottomNavBar.name,
          path: '/',
          deferredLoading: true,
          children: [
            _i5.RouteConfig(
              HomeScreen.name,
              path: 'home',
              parent: BottomNavBar.name,
            ),
            _i5.RouteConfig(
              ProfileScreen.name,
              path: 'profile',
              parent: BottomNavBar.name,
            ),
            _i5.RouteConfig(
              SettingsScreen.name,
              path: 'settings',
              parent: BottomNavBar.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavBar extends _i5.PageRouteInfo<void> {
  const BottomNavBar({List<_i5.PageRouteInfo>? children})
      : super(
          BottomNavBar.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNavBar';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: 'home',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreen extends _i5.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: 'profile',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsScreen extends _i5.PageRouteInfo<void> {
  const SettingsScreen()
      : super(
          SettingsScreen.name,
          path: 'settings',
        );

  static const String name = 'SettingsScreen';
}

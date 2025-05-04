import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_1/src/features/app/pages/bottom_nav_bar.dart';
import 'package:flutter_application_1/src/features/app/pages/home_screen.dart';
import 'package:flutter_application_1/src/features/app/pages/profile_screen.dart';
import 'package:flutter_application_1/src/features/app/pages/settings_screen.dart';
import 'package:flutter_application_1/src/features/screens/Auth/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, path: '/'),
    AutoRoute(
      page: BottomNavBar,
      path: '/bottomMenu',
      deferredLoading: true,
      children: [
        AutoRoute(page: HomeScreen, path: 'home'),
        AutoRoute(page: ProfileScreen, path: 'profile'),
        AutoRoute(page: SettingsScreen, path: 'settings'),
      ],
    ),
  ],
)
class $AppRouter {}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/features/app/router/router.gr.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Future<void> _canPopSelf(TabsRouter tabsRouter) async {
    if (tabsRouter.current.router.canPop()) {
      await tabsRouter.current.router.popTop().then(
        (value) async => _canPopSelf(tabsRouter),
      );
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeScreen(), 
        ProfileScreen(), 
        SettingsScreen()
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentIndex =
            AutoTabsRouter.of(context, watch: true).activeIndex;

        return Scaffold(
          body: FadeTransition(opacity: animation, child: child),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) async {
              if (index == currentIndex) {
                await _canPopSelf(tabsRouter);
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
            selectedFontSize: 12,
            unselectedFontSize: 12,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.GreenColor,
            unselectedItemColor: AppColors.NavItemGrey,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/homeIcon.svg',
                  color:
                      currentIndex == 0
                          ? AppColors.GreenColor
                          : AppColors.NavItemGrey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/profileIcon.svg',
                  color:
                      currentIndex == 1
                          ? AppColors.GreenColor
                          : AppColors.NavItemGrey,
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/settingsIcon.svg',
                  color:
                      currentIndex == 2
                          ? AppColors.GreenColor
                          : AppColors.NavItemGrey,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}

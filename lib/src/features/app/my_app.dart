import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/features/app/router/router.gr.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final _appRouter = AppRouter();  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.whiteColor),
        useMaterial3: true,
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

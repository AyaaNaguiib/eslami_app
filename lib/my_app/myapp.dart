import 'package:eslami_app/config/theme/my_theme.dart';
import 'package:eslami_app/core/routes_manager.dart';
import 'package:eslami_app/presentation/screens/home/home_screen.dart';
import 'package:eslami_app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.LightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes:{
        RoutesManager.splashRoute: (_)=> SplashScreen(),
        RoutesManager.homeRoute: (_)=> HomeScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
import 'package:eslami_app/config/theme/my_theme.dart';
import 'package:eslami_app/core/routes_manager.dart';
import 'package:eslami_app/presentation/screens/home/home_screen.dart';
import 'package:eslami_app/presentation/screens/home/taps/sebhatab/sebha_tab.dart';
import 'package:eslami_app/presentation/screens/quran_details/qurandetails.dart';
import 'package:eslami_app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/hadith_details/hadith_Details.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes:{
        RoutesManager.splashRoute: (_)=> SplashScreen(),
        RoutesManager.homeRoute: (_)=> HomeScreen(),
        RoutesManager.quranDetailRoute: (_)=> QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (_) => HadithDetailsScreen(),
        RoutesManager.sebhaRoute: (_) => SebhaTab(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
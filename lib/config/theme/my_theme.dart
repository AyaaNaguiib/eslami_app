import 'package:eslami_app/core/colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: ColorsManager.goldColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0, // To make the app bar blend with the background
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 36),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: ColorsManager.goldColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        elevation: 18,

      ),
      iconTheme: const IconThemeData(color: Colors.white,size: 30),
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        color: ColorsManager.goldColor.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 14,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.goldColor, // Button color
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
        ),
      ),
      dividerColor: Color(0xFFB7935F),
      textTheme: const TextTheme(
        labelMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Color(0xFF242424),
        ),
        titleMedium: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: Color(0xFF242424)),
        bodyMedium: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        headlineMedium: TextStyle(
          fontSize: 48, // Large font for tasbeeh count
          fontWeight: FontWeight.bold,
          color: ColorsManager.goldColor, // Color to match the design
        ),
        titleLarge: TextStyle(
          fontSize: 24, // Text for "عدد التسبيحات"
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424), // Dark text color
        ),
        headlineLarge: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),

        bodyLarge: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500),
      ),
  );
}

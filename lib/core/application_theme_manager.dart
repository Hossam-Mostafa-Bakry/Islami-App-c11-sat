import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static Color primaryColor = const Color(0xFFB7935F);
  static ThemeData lightThemeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "ElMessiri",
          color: Colors.black),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "ElMessiri",
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: "ElMessiri",
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        fontFamily: "ElMessiri",
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: "ElMessiri",
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(size: 35, color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedIconTheme: const IconThemeData(size: 28, color: Colors.white),
        unselectedItemColor: Colors.white),
  );
}

import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get tmtrade {
    return ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            // foregroundColor: AppColors.,
            // backgroundColor: AppColors.
            ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false));
  }
}

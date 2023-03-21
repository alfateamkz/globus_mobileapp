import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
        fontFamily: 'SFUIDisplay',
        scaffoldBackgroundColor: AppColors.bodyBg,
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.mainOrange),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false));
  }
}

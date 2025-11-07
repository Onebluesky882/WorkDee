import 'package:flutter/material.dart';
import 'package:flutter_projects/common/constants/colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightModeBackground,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightModeBackground,

      // color text , icon
      foregroundColor: AppColors.textLightMode,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.elevatedButton,
      ),
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkModeBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,

      // color text , icon
      foregroundColor: AppColors.textDarkMode,

      centerTitle: true,
    ),
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.elevatedButton,
      ),
    ),
  );
}

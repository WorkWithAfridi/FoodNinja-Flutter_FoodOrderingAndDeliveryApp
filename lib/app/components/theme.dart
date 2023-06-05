import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/colors.dart';

class FoodNinjaAppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.compact,
    primaryColor: AppColors.greenLight,
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.greenLight,
      onPrimary: Colors.white,
      secondary: AppColors.greenDark,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: AppColors.scaffoldBackground,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      elevation: 0,
    ),
  );
}

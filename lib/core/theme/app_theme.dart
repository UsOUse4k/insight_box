import 'package:flutter/material.dart';
import 'package:insight_box/core/theme/app_colors.dart';

class AppTheme {
  static final currentTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: 'SF Pro Display',
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(
        color: AppColors.textColor3,
        fontSize: 14,
        height: 1.37,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.textColor2,
      unselectedItemColor: AppColors.greyTextColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.textColor2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        fixedSize: const Size.fromHeight(63),
        elevation: 0,
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        fixedSize: const Size.square(46),
        elevation: 0,
        foregroundColor: AppColors.textColor2,
      ),
    ),
  );
}

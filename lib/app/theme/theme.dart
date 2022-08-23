// Flutter imports:
import 'package:ecommerce_demo/app/constants/app_colors.dart';
import 'package:ecommerce_demo/app/theme/text_styles.dart';
import 'package:flutter/material.dart';

// Project imports:

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        canvasColor: AppColors.background,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.orange,
          onPrimary: AppColors.white,
          error: AppColors.errorRed,
          onError: AppColors.errorRed,
          background: AppColors.dark,
          onBackground: AppColors.white,
          surface: AppColors.white,
          onSurface: AppColors.black,
          onSecondary: AppColors.white,
          secondary: AppColors.orange,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          centerTitle: true,
          titleTextStyle:
              AppTextStyle.markPro14W400.apply(color: AppColors.black),
          iconTheme: const IconThemeData(color: AppColors.orange),
          actionsIconTheme: const IconThemeData(color: AppColors.orange),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: AppColors.dark,
          elevation: 0,
          shape: CircularNotchedRectangle(),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.transparent,
          elevation: 0,
          unselectedIconTheme: IconThemeData(
            color: AppColors.white,
            size: 25,
          ),
          selectedIconTheme: IconThemeData(
            // color: AppColors.blue,
            size: 35,
          ),
          showUnselectedLabels: false,
          unselectedLabelStyle: TextStyle(color: AppColors.white),
          selectedLabelStyle: TextStyle(color: AppColors.white),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            // backgroundColor: AppColors.blue,
            textStyle: AppTextStyle.markPro16W400.apply(color: AppColors.white),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            // backgroundColor: AppColors.blue,
            elevation: 3),
      );
}

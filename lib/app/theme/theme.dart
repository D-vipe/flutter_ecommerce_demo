// Flutter imports:
import 'package:ecommerce_demo/app/constants/app_colors.dart';
import 'package:ecommerce_demo/app/theme/text_styles.dart';
import 'package:flutter/material.dart';

// Project imports:

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        canvasColor: AppColors.white,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.orange,
          onPrimary: AppColors.white,
          error: AppColors.errorRed,
          onError: AppColors.errorRed,
          background: AppColors.white,
          onBackground: AppColors.black,
          surface: AppColors.white,
          onSurface: AppColors.black,
          onSecondary: AppColors.white,
          secondary: AppColors.background,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.white,
          centerTitle: true,
          titleTextStyle:
              AppTextStyle.comforta14W400.apply(color: AppColors.black),
          iconTheme: const IconThemeData(color: AppColors.orange),
          actionsIconTheme: const IconThemeData(color: AppColors.orange),
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: AppColors.white,
          elevation: 3,
          shape: CircularNotchedRectangle(),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 3,
          unselectedIconTheme: IconThemeData(
            color: AppColors.dark,
            size: 25,
          ),
          selectedIconTheme: IconThemeData(
            // color: AppColors.blue,
            size: 35,
          ),
          showUnselectedLabels: false,
          unselectedLabelStyle: TextStyle(color: AppColors.dark),
          // selectedLabelStyle: TextStyle(color: AppColors.blue),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            // backgroundColor: AppColors.blue,
            textStyle:
                AppTextStyle.comforta16W400.apply(color: AppColors.white),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            // backgroundColor: AppColors.blue,
            elevation: 3),
      );
}

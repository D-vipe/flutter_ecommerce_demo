// Flutter imports:
import 'package:ecommerce_demo/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  static const BoxDecoration navBar = BoxDecoration(
    color: AppColors.dark,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),
    ),
  );
  static const BoxDecoration roundedBox = BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(12),
      topLeft: Radius.circular(12),
    ),
  );
}

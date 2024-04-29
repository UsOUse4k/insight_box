import 'package:flutter/material.dart';
import 'package:insight_box/core/theme/app_colors.dart';

abstract class AppShadows {
  static const defaultShadow = [
    BoxShadow(
      blurRadius: 16,
      offset: Offset(7, 6),
      color: AppColors.shadowColor,
    ),
    BoxShadow(
      blurRadius: 16,
      offset: Offset(-7, -6),
      color: Colors.white,
    ),
    BoxShadow(
      blurRadius: 16,
      offset: Offset(-4, -4),
      color: Color(0x44ffffff),
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

abstract class AppGradients {
  static const LinearGradient primaryBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.gradientTop,
      AppColors.gradientMiddle,
      AppColors.gradientBottom,
    ],
    stops: [0.0, 0.5, 1.0],
  );

  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [AppColors.accentYellow, Color(0xFFD4E019)],
  );
}

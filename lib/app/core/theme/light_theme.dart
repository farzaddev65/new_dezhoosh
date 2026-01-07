import 'package:bestdroid/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'theme_colors.dart';

class LightTheme {
  static final data = ThemeData(
    scaffoldBackgroundColor: AppColorsLight.scaffoldBackgroundColor,
    primaryColorDark: AppColorsLight.primaryColorDark,
    primaryColor: AppColorsLight.primaryColor,
    disabledColor: AppColorsLight.disableColor,
    cardColor: AppColorsLight.cardColor,
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,
    ).copyWith(onSurface: Colors.white),
    useMaterial3: true,
  );
}

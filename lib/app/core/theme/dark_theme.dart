import 'package:bestdroid/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';


class DarkTheme {
  static final data = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: AppColorsLight.scaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    // سایر رنگ ها
  );
}


import 'package:bestdroid/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'theme_colors.dart';

class LightTheme {
  static final data = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,

    ).copyWith(
      onSurface: Colors.white, // رنگ تمام متن‌ها

    ),
    useMaterial3: true,
  );
}
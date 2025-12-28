import 'package:flutter/material.dart';
import 'package:bestdroid/app/core/theme/light_theme.dart';
import 'package:bestdroid/app/core/theme/dark_theme.dart';
import 'package:bestdroid/app/core/theme/theme_repository.dart';

class ThemeProvider extends ChangeNotifier {
  final ThemeRepository repository;

  ThemeProvider(this.repository) {
    _isDark = repository.loadIsDark();
  }

  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeData get theme => _isDark ? DarkTheme.data : LightTheme.data;

  void toggleTheme() {
    _isDark = !_isDark;//
    repository.saveIsDark(_isDark);
    notifyListeners();
  }
}

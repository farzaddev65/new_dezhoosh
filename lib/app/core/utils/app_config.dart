
import 'package:bestdroid/app/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class AppConfig extends ChangeNotifier {
  AppConfig._privateConstructor();
  static final AppConfig instance = AppConfig._privateConstructor();

  ThemeData _theme = LightTheme.data;
  Locale _locale = const Locale('fa');

  ThemeData get theme => _theme;
  Locale get locale => _locale;


  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}



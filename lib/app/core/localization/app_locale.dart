import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:bestdroid/app/core/managers/hive_manager/hive_manager.dart';
import 'package:bestdroid/app/core/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bestdroid/generated/l10n.dart'; // S کلاس تولید شده توسط intl_utils
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppLocale {
  AppLocale._();
  static final instance = AppLocale._();

  static final localeNotifier = ValueNotifier<Locale>(const Locale('fa'));

  static Locale get currentLocale => Locale(Storage.getString(HiveConstants.locale,defaultValue: 'fa'));

  static S get current => S.current;

  static Future<void> init() async {
    await Hive.initFlutter();
    final localeCode =
    Storage.getString(HiveConstants.locale,defaultValue: 'fa');
    localeNotifier.value = Locale(localeCode);
    S.load(localeNotifier.value);
  }

  static Future<void> setLocale(Locale locale) async {
    localeNotifier.value = locale;
    await Storage.setString(HiveConstants.locale,locale.languageCode);
    S.load(locale);
  }

  static List<LocalizationsDelegate<dynamic>> delegates = const [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

 static void changeLanguage() {
    final bool isPersian = Get.locale == const Locale('fa');
    String locale = '';
    if (isPersian) {
      locale = 'en';
    } else {
      locale = 'fa';
    }
    Get.updateLocale(Locale(locale));
    Storage.setString('locale', locale);
  }

  void setLanguage(String language) {
    Get.updateLocale(Locale(language));
    Storage.setString('locale', language);
  }




  static List<Locale> supportedLocales = S.delegate.supportedLocales;
}


import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Storage {
  static const String _boxName = HiveConstants.hiveLocalStorage;

  /// فراخوانی در main برای init Hive
  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox(_boxName);
  }

  static Future<void> setBool(String key, bool value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static Future<void> setInt(String key, int value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static Future<void> setDouble(String key, double value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static Future<void> setString(String key, String value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static Future<void> setStringList(String key, List<String> value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static Future<void> setMap(String key, Map<String, dynamic> value) async {
    final box = Hive.box(_boxName);
    await box.put(key, value);
  }

  static bool getBool(String key, {bool defaultValue = false}) {
    final box = Hive.box(_boxName);
    return box.get(key, defaultValue: defaultValue) as bool;
  }

  static int getInt(String key, {int defaultValue = 0}) {
    final box = Hive.box(_boxName);
    return box.get(key, defaultValue: defaultValue) as int;
  }

  static double getDouble(String key, {double defaultValue = 0.0}) {
    final box = Hive.box(_boxName);
    return box.get(key, defaultValue: defaultValue) as double;
  }

  static String getString(String key, {String defaultValue = ''}) {
    final box = Hive.box(_boxName);
    return box.get(key, defaultValue: defaultValue) as String;
  }

  static List<String>? getStringList(String key) {
    final box = Hive.box(_boxName);
    final val = box.get(key);
    if (val == null) return null;
    return List<String>.from(val as List);
  }

  static Map<String, dynamic>? getMap(String key) {
    final box = Hive.box(_boxName);
    final val = box.get(key);
    if (val == null) return null;
    return Map<String, dynamic>.from(val as Map);
  }

  static Future<void> delete(String key) async {
    final box = Hive.box(_boxName);
    await box.delete(key);
  }

  static Future<void> clearAll() async {
    final box = Hive.box(_boxName);
    await box.clear();
  }
}

import 'package:hive/hive.dart';

class HiveManager {
  static const String _boxName = 'app_storage';

  static Box<dynamic>? _box;

  /// Call once (e.g. in main)
  static Future<void> init() async {
    _box ??= await Hive.openBox<dynamic>(_boxName);
  }


  static Future<void> setBool(String key, bool value) async {
    await _box!.put(key, value);
  }

  static Future<void> setString(String key, String value) async {
    await _box!.put(key, value);
  }

  static Future<void> setInt(String key, int value) async {
    await _box!.put(key, value);
  }

  static Future<void> setDouble(String key, double value) async {
    await _box!.put(key, value);
  }

  /// ---------- GETTERS ----------

  static bool getBool(String key, {bool defaultValue = false}) {
    return _box!.get(key, defaultValue: defaultValue) as bool;
  }

  static String getString(String key, {String defaultValue = ''}) {
    return _box!.get(key, defaultValue: defaultValue) as String;
  }

  static int getInt(String key, {int defaultValue = 0}) {
    return _box!.get(key, defaultValue: defaultValue) as int;
  }

  static double getDouble(String key, {double defaultValue = 0.0}) {
    return _box!.get(key, defaultValue: defaultValue) as double;
  }

  /// ---------- UTILITIES ----------

  static bool contains(String key) {
    return _box!.containsKey(key);
  }

  static Future<void> remove(String key) async {
    await _box!.delete(key);
  }

  static Future<void> clearAll() async {
    await _box!.clear();
  }
}

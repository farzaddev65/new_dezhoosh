import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:bestdroid/app/core/utils/storage.dart';

class ThemeRepository {
  bool loadIsDark() {
    return Storage.getBool(HiveConstants.isDark) ?? false;
  }

  Future<void> saveIsDark(bool isDark) async {
    await Storage.setBool(HiveConstants.isDark, isDark);
  }
}

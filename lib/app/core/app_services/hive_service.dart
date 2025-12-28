import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:bestdroid/app/data/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService extends GetxService {
  Future<HiveService> init() async {
    await Hive.initFlutter();
    await Hive.openBox(HiveConstants.hiveLocalStorage);
    await initUserModel();
    return this;
  }

  Future<void> initUserModel() async {
    Hive.registerAdapter(UserDtoAdapter());

    if (!Hive.isBoxOpen(HiveConstants.user)) {
      await Hive.openBox<UserDto>(HiveConstants.user);
    }
  }
}

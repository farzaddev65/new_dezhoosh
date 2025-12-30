import 'package:bestdroid/app/app_routes/app_routs.dart';
import 'package:bestdroid/app/core/constants/hive_constants.dart';
import 'package:bestdroid/app/core/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    debugPrint('ddd');
    Future.delayed(Duration(seconds: 2), () {
      if (Storage.getBool(HiveConstants.isLogin)) {
        Get.offAndToNamed(AppRouts.home);
      } else {
        Get.offAndToNamed(AppRouts.login);
      }
    });
  }
}

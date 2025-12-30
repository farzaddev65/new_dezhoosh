import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: AppImage(AppPng.icon, size: 128),
      ),
    );
  }
}

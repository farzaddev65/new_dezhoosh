import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';


class AppService extends GetxService {

  Future<AppService> init() async {

    debugDefaultTargetPlatformOverride = TargetPlatform.android;

    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.cubeGrid
      ..loadingStyle = EasyLoadingStyle.dark
      ..boxShadow = <BoxShadow>[]
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.yellow
      ..backgroundColor = Colors.blue
      ..indicatorColor = Colors.yellow
      ..textColor = Colors.transparent
      ..maskColor = Colors.blue
      ..userInteractions = false
      ..dismissOnTap = false;


    return this;
  }



}

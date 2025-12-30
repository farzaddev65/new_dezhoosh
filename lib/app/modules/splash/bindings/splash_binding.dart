import 'package:bestdroid/app/modules/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    //     Get.lazyPut<SplashController>(SplashController.new);
    Get.put(SplashController());

  }
}

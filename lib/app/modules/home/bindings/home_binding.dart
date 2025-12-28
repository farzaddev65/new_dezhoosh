import 'package:bestdroid/app/data/repositories/user_repository.dart';
import 'package:bestdroid/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

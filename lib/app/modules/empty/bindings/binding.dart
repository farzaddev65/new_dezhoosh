import 'package:bestdroid/app/modules/empty/controllers/controller.dart';
import 'package:get/get.dart';

class EmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyController());
  }
}

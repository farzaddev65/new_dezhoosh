import 'package:bestdroid/app/modules/automation_device/controllers/automation_device_controller.dart';
import 'package:bestdroid/app/modules/empty/controllers/controller.dart';
import 'package:get/get.dart';

class AutomationDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AutomationDeviceController());
  }
}

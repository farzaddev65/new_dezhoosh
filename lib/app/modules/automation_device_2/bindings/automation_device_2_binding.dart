import 'package:bestdroid/app/modules/automation_device_2/controllers/automation_device_2_controller.dart';
import 'package:get/get.dart';

class AutomationDevice2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(AutomationDevice2Controller());
  }
}

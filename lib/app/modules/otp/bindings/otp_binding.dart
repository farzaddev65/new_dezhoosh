import 'package:bestdroid/app/modules/empty/controllers/controller.dart';
import 'package:bestdroid/app/modules/otp/controllers/otp_controller.dart';
import 'package:get/get.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpController());
  }
}

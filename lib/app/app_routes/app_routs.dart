import 'package:bestdroid/app/modules/automation_device/bindings/automation_device_binding.dart';
import 'package:bestdroid/app/modules/automation_device/views/automation_device_view.dart';
import 'package:bestdroid/app/modules/automation_device_2/bindings/automation_device_2_binding.dart';
import 'package:bestdroid/app/modules/automation_device_2/views/automation_device_2_view.dart';
import 'package:bestdroid/app/modules/home/bindings/home_binding.dart';
import 'package:bestdroid/app/modules/home/views/home_view.dart';
import 'package:bestdroid/app/modules/login/bindings/login_binding.dart';
import 'package:bestdroid/app/modules/login/views/login_view.dart';
import 'package:bestdroid/app/modules/otp/bindings/otp_binding.dart';
import 'package:bestdroid/app/modules/otp/views/otp_view.dart';
import 'package:bestdroid/app/modules/setting/bindings/setting_binding.dart';
import 'package:bestdroid/app/modules/setting/views/setting_view.dart';
import 'package:bestdroid/app/modules/splash/bindings/splash_binding.dart';
import 'package:bestdroid/app/modules/splash/views/splash_view.dart';
import 'package:get/get.dart' show GetPage;

class AppRouts {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String setting = '/setting';
  static const String automationDevice = '/automationDevice';
  static const String automationDevice2 = '/automationDevice2';

  static const String initial = splash;

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(name: home, page: () => const HomeView(), binding: HomeBinding()),
    GetPage<dynamic>(name: splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage<dynamic>(name: login, page: () => const LoginView(), binding: LoginBinding()),
    GetPage<dynamic>(name: otp, page: () => const OtpView(), binding: OtpBinding()),
    GetPage<dynamic>(name: setting, page: () => const SettingView(), binding: SettingBinding()),
    GetPage<dynamic>(name: automationDevice, page: () => const AutomationDeviceView(), binding: AutomationDeviceBinding()),
    GetPage<dynamic>(name: automationDevice2, page: () => const AutomationDevice2View(), binding: AutomationDevice2Binding()),
  ];
}

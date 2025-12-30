import 'package:bestdroid/app/modules/home/bindings/home_binding.dart';
import 'package:bestdroid/app/modules/home/views/home_view.dart';
import 'package:bestdroid/app/modules/login/bindings/login_binding.dart';
import 'package:bestdroid/app/modules/login/views/login_view.dart';
import 'package:bestdroid/app/modules/otp/bindings/otp_binding.dart';
import 'package:bestdroid/app/modules/otp/views/otp_view.dart';
import 'package:bestdroid/app/modules/splash/bindings/splash_binding.dart';
import 'package:bestdroid/app/modules/splash/views/splash_view.dart';
import 'package:get/get.dart' show GetPage;

class AppRouts {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String otp = '/otp';

  static const String initial = splash;

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(name: home, page: () => const HomeView(), binding: HomeBinding()),
    GetPage<dynamic>(name: splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage<dynamic>(name: login, page: () => const LoginView(), binding: LoginBinding()),
    GetPage<dynamic>(name: otp, page: () => const OtpView(), binding: OtpBinding()),
  ];
}

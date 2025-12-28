import 'package:bestdroid/app/modules/home/bindings/home_binding.dart';
import 'package:bestdroid/app/modules/home/views/home_view.dart';
import 'package:get/get.dart' show GetPage;


class AppRouts {
  static const String home = '/home';

  static const String initial = home;

  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<dynamic>(name: home, page: () => const HomeView(), binding: HomeBinding()),
  ];
}

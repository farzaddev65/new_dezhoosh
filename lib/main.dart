import 'package:bestdroid/app/core/app_services/app_service.dart';
import 'package:bestdroid/app/core/theme/dark_theme.dart';
import 'package:bestdroid/app/core/theme/theme_provider.dart';
import 'package:bestdroid/app/core/theme/theme_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'app/app_routes/app_routs.dart';
import 'app/core/app_services/hive_service.dart';
import 'app/core/localization/app_locale.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await initService();
  runApp(const MyApp());
}

Future<void> initService() async {
  try {
    final services = [
      () => HiveService().init(),
      () => AppService().init(),
      () => AppLocale.init(),
    ];

    for (final service in services) {
      await Get.putAsync(service);
    }
  } catch (e, s) {
    debugPrint("Error initializing services: $e\n$s");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(ThemeRepository()),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return GetMaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            getPages: AppRouts.routes,
            initialRoute: AppRouts.initial,
            locale: AppLocale.currentLocale,
            localizationsDelegates: AppLocale.delegates,
            supportedLocales: AppLocale.supportedLocales,
            theme: themeProvider.theme,
            darkTheme: DarkTheme.data,
            themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,

            builder: EasyLoading.init(),
          );
        },
      ),
    );
  }
}

import 'package:bestdroid/app/core/utils/storage.dart';
import 'package:dio/dio.dart';
import '../../core/constants/app_constants.dart';

class ApiClient {
  late final Dio dio;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          "Accept": "application/json",
        },
      ),
    );

    // dio.interceptors.add(
    //   InterceptorsWrapper(
    //     onRequest: (options, handler) {
    //       // اضافه کردن Token به همه درخواست‌ها
    //       if ((Storage.getString(AppConstants.token)??'') != '') {
    //         options.headers["Authorization"] = "Bearer ${(Storage.getString(AppConstants.token)??'')}";
    //       }
    //       return handler.next(options);
    //     },
    //   ),
    // );
  }

  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;
}

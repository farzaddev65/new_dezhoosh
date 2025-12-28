import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;
  ApiException(this.message);

  factory ApiException.fromDioError(DioException e) {
    if (e.response != null) {
      return ApiException(e.response?.data["detail"] ?? "Server error");
    }
    return ApiException("Connection failed");
  }

  @override
  String toString() => message;
}

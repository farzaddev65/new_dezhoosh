import 'package:bestdroid/app/data/api/api_client.dart';
import 'package:bestdroid/app/data/api/api_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseRepository {
  final Dio dio = ApiClient().dio;

  Future<T> getRequest<T>({
    required String url,
    Map<String, dynamic>? query,
    required T Function(dynamic) parser,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: query,
      );
      return parser(response.data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  Future<T> postRequest<T>({
    required String url,
    required Map<String, dynamic> data,
    required T Function(dynamic) parser,
  }) async {
    try {
      final response = await dio.post(url, data: data);
      return parser(response.data);
    } on DioException catch (e) {
      debugPrint('dddd');
      throw ApiException.fromDioError(e);
    }
  }
}

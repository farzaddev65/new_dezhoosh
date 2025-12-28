import 'package:bestdroid/app/data/api/api_exceptions.dart';
import 'package:bestdroid/app/data/api/endpoints.dart';
import 'package:bestdroid/app/data/models/user/user_model.dart';
import 'package:bestdroid/app/data/repositories/base_repositories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class UserRepository extends BaseRepository {

  Future<UserDto?> login({required String phoneNumber}) {
    return postRequest(
      url: Endpoints.login,
      data: {
        'phone_number': phoneNumber,
      },
      parser: (json) {
        debugPrint('dddd');
        AuthResponse authResponse=AuthResponse.fromJson(json);
        // return null;
        return authResponse.authData?.userDto;
      },
    );
  }

  Future<AuthResponse?> verifyNumber({
    required String phoneNumber,
    required String verifyCode,
    required String fcmToken,
  }) {
    return postRequest(
      url: Endpoints.verifyNumber,
      data: {
        'phone_number': phoneNumber,
        'verify_code': verifyCode,
        'fcmToken': fcmToken,
      },
      parser: (json) {
        try {
          AuthResponse response=AuthResponse.fromJson(json);
          debugPrint('dddd');
          if (response.status == 1) {
            return response;
          } else {
            return null;
          }
        } on DioException catch (e) {
          debugPrint('dddd');
          throw ApiException.fromDioError(e);
        }
      },
    );
  }
}

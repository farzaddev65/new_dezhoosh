import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Core {
  static String? token;
  static String packageName='';

  static Options get options {
    return Options(
      headers: {"Accept": "application/json", "Content-Type": "application/json", if (token != null && token!.isNotEmpty) "Authorization": "Bearer $token"},
      receiveTimeout: const Duration(seconds: 25),
      sendTimeout: const Duration(seconds: 25),
    );
  }

  static BoxDecoration cardDecoration(BuildContext context)=>BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: context.theme.cardColor,
  );
}

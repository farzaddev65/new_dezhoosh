import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar AppAppBar({
  String? title,
  Widget? titleWidget,
  Color? backgroundColor,
  Widget? leading,
  double? elevation,
  double? leadingWidth,
  List<Widget>? actions,
}) => AppBar(
  title:titleWidget?? (title != null ? Text(title) : null),
  backgroundColor: backgroundColor,
  elevation: elevation,
  leading: leading ?? const Icon(Icons.arrow_back_ios_new_sharp).onTap(() => Get.back()),
  actions: actions,
  leadingWidth:leadingWidth?? 48,
);

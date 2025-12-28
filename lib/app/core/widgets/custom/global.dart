import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

Widget emptyWidget({final String? title}) => Container(
  color: Colors.transparent,
  child: Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: [Text(title ?? 'لیست خالیست'), const Icon(Icons.refresh)]),
  ),
);

Widget itemSpecification(String key, String value) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(key).labelMedium(color: Colors.grey),
    Text(value).labelMedium(color: Colors.black87), //
  ],
);

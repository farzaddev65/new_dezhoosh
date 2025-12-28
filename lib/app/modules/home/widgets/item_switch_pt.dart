import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/data/models/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemSwitchPt extends StatelessWidget {
  const ItemSwitchPt({super.key, required this.model });

  final SwitchModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Get.width / 2) - 20,
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.6), borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.all(8),//
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
            child: AppImage(model.icon??''),
          ),
          Column(
            children: [
              Text(model.title??'').labelLarge(color: Colors.black),
              Text(model.subtitle??'').bodyLarge(color: Colors.blueGrey),
            ],
          ),
        ],
      ),
    );
  }
}

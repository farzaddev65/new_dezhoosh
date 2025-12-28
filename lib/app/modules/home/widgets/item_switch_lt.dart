import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/data/models/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemSwitchLt extends StatelessWidget {
  const ItemSwitchLt({super.key, required this.model});

  final SwitchModel model;

  @override
  Widget build(BuildContext context) {
    Color titleColor = model.status == 1 || model.status == 2 ? Colors.black : Colors.white;
    Color subTitleColor = model.status == 1 || model.status == 2 ? Colors.black : Colors.white;
    Color containerColor = model.status == 1 || model.status == 2 ? Colors.white.withValues(alpha: 0.6) : Colors.black.withValues(alpha: 0.6);
    Color iconColor = Colors.yellow.withValues(alpha: model.status == 2 ? 1 : 0.3);
    return Container(
      width: (Get.width / 2) - 20,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(8), //
      child: Row(
        spacing: 8,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor,
            ),
            child: AppImage(model.icon ?? ''),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title ?? '').titleLarge(color: titleColor),
              Text(
                model.status == 2
                    ? 'روشن'
                    : model.status == 0 || model.status == 1
                    ? 'خاموش'
                    : model.subtitle ?? '',
              ).labelLarge(color: subTitleColor.withValues(alpha: 0.5)),
            ],
          ),
        ],
      ),
    );
  }
}

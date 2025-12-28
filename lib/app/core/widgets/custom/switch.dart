import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {

  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.title,
    this.mainAxisAlignment,
    this.height = 24.0,
    this.width = 48.0,
    this.activeColor,
    this.spacing,
    this.inactiveColor,
    this.thumbColor = Colors.white,
  });
  final bool value;
  final String? title;
  final MainAxisAlignment? mainAxisAlignment;
  final ValueChanged<bool> onChanged;
  final double height;
  final double width;
  final double? spacing;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color thumbColor;

  @override
  Widget build(BuildContext context) {
    // بررسی جهت متن
    final isRTL = Directionality.of(context) == TextDirection.rtl;

    // اگه rtl باشه، جای توپک برعکس می‌شه
    final alignment = value ? (isRTL ? Alignment.centerLeft : Alignment.centerRight) : (isRTL ? Alignment.centerRight : Alignment.centerLeft);

    return Container(//
      child: GestureDetector(
        onTap: () => onChanged(!value),
        child: Container(
          child: Row(
            spacing:spacing?? 8,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: [
              if (title != null) Text(title!).bodySmall(),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: width,
                height: height,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height / 2),
                  color: value ? (activeColor??Theme.of(context).primaryColor) : inactiveColor ?? Theme.of(context).primaryColor.withValues(alpha: 0.3),
                ),
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 200),
                  alignment: alignment,
                  child: Container(
                    width: height - 4,
                    height: height - 4,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: thumbColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

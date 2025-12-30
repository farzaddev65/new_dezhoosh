import 'package:flutter/material.dart';

class VerticalIconSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  final double height;
  final double width;
  final Duration duration;

  final IconData activeIcon;
  final IconData inactiveIcon;

  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;

  final double bodyRadius;   // اضافه شد
  final double thumbRadius;  // اضافه شد

  const VerticalIconSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.height = 280,
    this.width = 100,
    this.duration = const Duration(milliseconds: 350),
    this.activeIcon = Icons.power,
    this.inactiveIcon = Icons.power_off,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
    this.thumbColor = Colors.white,
    this.bodyRadius = 20,   // پیش‌فرض گرد
    this.thumbRadius = 20,  // پیش‌فرض گرد
  });

  @override
  Widget build(BuildContext context) {
    final double padding = 8;
    final double thumbSize = width - (padding * 2);

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: duration,
        height: height,
        width: width,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: value ? activeColor : inactiveColor,
          borderRadius: BorderRadius.circular(bodyRadius),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: duration,
              curve: Curves.easeInOutCubic,
              alignment:
              value ? Alignment.topCenter : Alignment.bottomCenter,
              child: Container(
                height: thumbSize,
                width: thumbSize,
                decoration: BoxDecoration(
                  color: thumbColor,
                  borderRadius: BorderRadius.circular(thumbRadius),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      color: Colors.black26,
                    )
                  ],
                ),
                child: AnimatedSwitcher(
                  duration: duration,
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Icon(
                    value ? activeIcon : inactiveIcon,
                    key: ValueKey(value),
                    size: thumbSize * 0.45,
                    color: value ? activeColor : inactiveColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:shimmer/shimmer.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.isLoading = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = widget.borderRadius ?? 8.0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // final angle = _controller.value * 2 * math.pi;

        return widget.isLoading
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: context.theme.primaryColor,
                    highlightColor: context.theme.primaryColor,
                    child: Container(
                      width: double.infinity, // 👈 عرض رو کل صفحه می‌کنه
                      decoration: widget.isLoading
                          ? BoxDecoration(
                              borderRadius: BorderRadius.circular(borderRadius),
                              color: Colors.red,
                            )
                          : null,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                          color: widget.backgroundColor ?? context.theme.primaryColor, //
                        ),
                        child: ElevatedButton(
                          onPressed: widget.isLoading ? null : widget.onPressed,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: widget.backgroundColor ?? context.theme.cardColor, //
                            shadowColor: widget.backgroundColor ?? context.theme.cardColor, //
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap, // حذف فضای اضافه
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(borderRadius),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              // if(widget.isLoading) SizedBox(
                              //     width: 16,
                              //     height: 16,
                              //     child: CircularProgressIndicator(strokeWidth: 2,)),
                              Text(
                                widget.text,
                                style: TextStyle(
                                  // color: widget.textColor ?? context.theme.primaryColorDark,
                                  color: widget.textColor ?? Colors.white,
                                  fontSize: 18, //
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballPulse,
                      colors: [Colors.black87],
                      strokeWidth: 10,
                      backgroundColor: Colors.transparent,
                      pathBackgroundColor: Colors.black,
                    ),
                  ),
                ],
              )
            : Container(
                width: double.infinity,
                padding: widget.isLoading ? const EdgeInsets.all(4) : EdgeInsets.zero, //
                child: ElevatedButton(
                  onPressed: widget.isLoading ? null : widget.onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.backgroundColor ?? context.theme.primaryColor, //
                    shadowColor: widget.backgroundColor ?? context.theme.cardColor, //
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // حذف فضای اضافه
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                  ),
                  child:
                      Text(
                        // 'text',
                        widget.text,
                      ).labelLarge(
                        color: widget.textColor ?? Colors.white,
                        fontSize: 18, //
                        fontWeight: FontWeight.bold,
                      ),
                ),
              );
      },
    );
  }
}

class AppButton3 extends StatefulWidget {
  const AppButton3({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    this.isLoading = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  State<AppButton3> createState() => _AppButton3State();
}

class _AppButton3State extends State<AppButton3> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = widget.borderRadius ?? 12.0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final angle = _controller.value * 2 * math.pi;

        return Container(
          width: double.infinity, // 👈 عرض رو کل صفحه می‌کنه
          padding: widget.isLoading ? const EdgeInsets.all(2) : EdgeInsets.zero,
          decoration: widget.isLoading
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  color: Colors.red,
                  gradient: SweepGradient(
                    transform: GradientRotation(angle),
                    colors: const [
                      Color(0xff045100), //
                      Colors.grey,
                      Color(0xff045100), //
                      Colors.grey,
                      Color(0xff045100), //
                      Colors.grey,
                    ],
                  ),
                )
              : null,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: widget.backgroundColor ?? context.theme.cardColor, //
            ),
            child: ElevatedButton(
              onPressed: widget.isLoading ? null : widget.onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.backgroundColor ?? context.theme.cardColor, //
                shadowColor: widget.backgroundColor ?? context.theme.cardColor, //
                tapTargetSize: MaterialTapTargetSize.shrinkWrap, // حذف فضای اضافه
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  // if(widget.isLoading) SizedBox(
                  //     width: 16,
                  //     height: 16,
                  //     child: CircularProgressIndicator(strokeWidth: 2,)),
                  Text(
                    widget.text,
                    style: TextStyle(
                      color: widget.textColor ?? context.theme.primaryColorDark,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppButtonBorder extends StatelessWidget {
  const AppButtonBorder({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.textStyle,
    this.textColor,
    this.textFontWeight,
    this.fontSize,
    this.borderRadius,
    this.padding,
    this.leadingIcon,
    this.trailingIcon,
    this.mainAxisSize,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final Color? textColor;
  final FontWeight? textFontWeight;
  final double? fontSize;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final MainAxisSize? mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.black,
        elevation: 0,
        backgroundColor: backgroundColor ?? Colors.white,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        side: BorderSide(color: context.theme.primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        children: [
          if (leadingIcon != null) ...[
            leadingIcon!,
            const SizedBox(width: 8.0),
          ],
          Text(
            text,
            style:
                textStyle ??
                TextStyle(
                  color: textColor ?? context.theme.primaryColor,
                  fontSize: fontSize ?? 18.0,
                  fontWeight: textFontWeight ?? FontWeight.w500,
                ),
          ),
          if (trailingIcon != null) ...[
            const SizedBox(width: 8.0),
            trailingIcon!,
          ],
        ],
      ),
    );
  }
}

class NeonButton extends StatelessWidget {
  const NeonButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffa0ff09),
              Color(0xff68a801),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.cyanAccent.withOpacity(0.8),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(-4, -4), // نور بالا سمت چپ
            ),
            BoxShadow(
              color: const Color(0xffa0ff09).withValues(alpha: 0.8),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(4, 4), // نور پایین سمت راست
            ),
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Color(0xffa0ff09),
                blurRadius: 10,
              ),
              Shadow(
                color: Color(0xff68a801), //
                blurRadius: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

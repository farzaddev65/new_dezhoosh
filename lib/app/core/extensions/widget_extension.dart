part of 'extensions.dart';

extension WidgetsExtension on Widget {
  Widget withTooltip(
    final String message, {
    final Decoration? decoration,
    final double? height,
    final bool? preferBelow,
    final EdgeInsetsGeometry? padding,
    final TextStyle? textStyle,
    final Duration? waitDuration,
    final EdgeInsetsGeometry? margin,
  }) =>
      Tooltip(
        message: message,
        decoration: decoration,
        height: height,
        padding: padding,
        preferBelow: preferBelow,
        textStyle: textStyle,
        waitDuration: waitDuration,
        margin: margin,
        child: this,
      );

  Widget marginBottom(final double value) => Container(margin: EdgeInsets.only(bottom: value), child: this);

  Widget marginStart(final double value) => Container(
      margin: EdgeInsets.only(
        right: isPersianLang ? value : 0,
        left: !isPersianLang ? value : 0,
      ),
      child: this);

  Widget marginEnd(final double value) => Container(
      margin: EdgeInsets.only(
        right: !isPersianLang ? value : 0,
        left: isPersianLang ? value : 0,
      ),
      child: this);

  Widget circleBorder({final Color? color, final double? width, final double? padding}) => Container(
        padding: EdgeInsets.all(padding ?? 2),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: width ?? 2, color: color ?? Colors.black87)),
        child: this,
      );

  Widget fit() => FittedBox(key: key, fit: BoxFit.scaleDown, child: this);

  Widget setMaxWidth(final double? maxWidth) => Container(
        constraints: BoxConstraints(maxWidth: maxWidth ?? 500),
        child: this,
      );

  Widget expanded({final int flex = 1}) => Expanded(flex: flex, child: this);
  Widget red() => Container(color: Colors.red, child: this);

  Widget onTap(final GestureTapCallback? onPressed) => GestureDetector(onTap: onPressed, child: this);



  Widget onLongPress(final GestureTapCallback? onPressed) => GestureDetector(onLongPress: onPressed, child: this);

  Widget onDoubleTap(final GestureTapCallback? onPressed) => GestureDetector(onDoubleTap: onPressed, child: this);

  Widget ltr() => Directionality(textDirection: TextDirection.ltr, child: this);

  Widget rtl() => Directionality(textDirection: TextDirection.rtl, child: this);

  Widget scale(final double scale) => Transform.scale(scale: scale, child: this);

  Widget translate(final Offset offset) => Transform.translate(offset: offset, child: this);

  Widget rotate(final double scale) => Transform.rotate(angle: scale, child: this);

  Widget safeArea() => SafeArea(child: this);

  Widget scrollable({final Axis scrollDirection = Axis.vertical}) => SingleChildScrollView(
        scrollDirection: scrollDirection,
        child: this,
      );

  Widget container({
    final double? width,
    final double? height,
    final Alignment? alignment,
    final Color? backgroundColor,
    final double borderWidth = 1,
    final double radius = 1,
    final BorderRadius? borderRadius,
    final Color borderColor = Colors.transparent,
    final EdgeInsets? padding,
    final EdgeInsets? margin,
    final BoxConstraints? constraints,
  }) =>
      Container(
        constraints: constraints,
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        alignment: alignment,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:borderRadius?? BorderRadius.circular(radius),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: this,
      );

  Widget clipRRect({
    final double? width,
    final double? height,
    final Alignment? alignment,
    final Color? backgroundColor,
    final BorderRadius? borderRadius,
    final double borderWidth = 1,
    final double radius = 1,
    final Color borderColor = Colors.transparent,
    final EdgeInsets? padding,
    final EdgeInsets? margin,
    final BoxConstraints? constraints,
  }) =>
      ClipRRect(
        borderRadius:borderRadius?? BorderRadius.circular(radius),
        child: this,
      );
}

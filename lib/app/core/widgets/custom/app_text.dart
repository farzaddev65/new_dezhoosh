import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final TextStyle Function(TextTheme) selector;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const AppText(
    this.data, {
    super.key,
    required this.selector,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final style = selector(theme).copyWith(
      color: color,
      fontSize: fontSize,
    );

    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: style,
    );
  }
}

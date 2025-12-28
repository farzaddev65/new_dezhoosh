import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.source, {
    super.key,
    this.color,
    this.width,
    this.height,
    this.size,
    this.fit,
    this.clipBehavior,
    this.borderRadius,
    this.margin,
    this.placeholder,
    this.onTap,
  });

  final String source;
  final Color? color;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final Clip? clipBehavior;
  final double? borderRadius;
  final EdgeInsets? margin;
  final String? placeholder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return image();
  }

  Widget image() {
    if (source.length <= 10) {
      if (placeholder == null) {
        return SizedBox(width: width, height: height);
      } else {
        return _imageAsset(
          placeholder ?? '',
          width: size ?? width,
          height: size ?? height,
          borderRadius: borderRadius ?? 0,
          color: color,
          margin: margin ?? EdgeInsets.zero,
          onTap: onTap,
          fit: fit ?? BoxFit.contain,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
        );
      }
    } else {
      if (source.startsWith('http')) {
        return _imageNetwork(
          source,
          width: size ?? width,
          height: size ?? height,
          fit: fit ?? BoxFit.contain,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
          margin: margin ?? EdgeInsets.zero,
          borderRadius: borderRadius ?? 0,
          color: color,
          onTap: onTap,
          placeholder: placeholder,
        );
      } else {
        return _imageAsset(
          source,
          width: size ?? width,
          height: size ?? height,
          fit: fit ?? BoxFit.contain,
          clipBehavior: clipBehavior ?? Clip.hardEdge,
          margin: margin ?? EdgeInsets.zero,
          borderRadius: borderRadius ?? 0,
          color: color,
          onTap: onTap,
        );
      }
    }
  }

  Widget _imageAsset(
    final String asset, {
    final Color? color,
    final double? width,
    final double? height,
    final BoxFit fit = BoxFit.contain,
    final Clip clipBehavior = Clip.hardEdge,
    final double borderRadius = 1,
    final EdgeInsets margin = EdgeInsets.zero,
    final VoidCallback? onTap,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      margin: margin,
      width: width,
      height: height,
      child: asset.substring(asset.length - 3).toLowerCase() == 'svg'
          ? SvgPicture.asset(asset, width: width, height: height, color: color, fit: fit, clipBehavior: clipBehavior)
          : Image.asset(asset, color: color, width: width, height: height, fit: fit),
    ),
  );

  Widget _imageNetwork(
    final String url, {
    final Color? color,
    final double? width,
    final double? height,
    final BoxFit fit = BoxFit.contain,
    final Clip clipBehavior = Clip.hardEdge,
    final double borderRadius = 1,
    final EdgeInsets margin = EdgeInsets.zero,
    final VoidCallback? onTap,
    final String? placeholder,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      margin: margin,
      width: width,
      height: height,
      child: url.length <= 10
          ? placeholder == null
                ? const SizedBox()
                : _imageNetwork(url, width: width, height: height, color: color, fit: fit, clipBehavior: clipBehavior)
          : url.substring(url.length - 3) == 'svg'
          ? SvgPicture.network(
              url,
              width: width,
              height: height,
              color: color,
              fit: fit,
              placeholderBuilder: placeholder == null ? null : (final _) => _imageAsset(placeholder, width: width, height: height, fit: fit, clipBehavior: clipBehavior),
            )
          : Image.network(url, color: color, width: width, height: height, fit: fit),
    ),
  );

  Widget _imageFile(
    final File file, {
    final Color? color,
    final double? width,
    final double? height,
    final BoxFit fit = BoxFit.contain,
    final double borderRadius = 1,
    final EdgeInsets margin = EdgeInsets.zero,
    final VoidCallback? onTap,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      margin: margin,
      width: width,
      height: height,
      child: Image.file(file, color: color, width: width, height: height, fit: fit),
    ),
  );

  Widget _imageMemory(
    final Uint8List file, {
    final Color? color,
    final double? width,
    final double? height,
    final BoxFit fit = BoxFit.contain,
    final double borderRadius = 1,
    final EdgeInsets margin = EdgeInsets.zero,
    final VoidCallback? onTap,
  }) => GestureDetector(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      margin: margin,
      width: width,
      height: height,
      child: Image.memory(file, color: color, width: width, height: height, fit: fit),
    ),
  );
}

class AppAvatar extends StatelessWidget {
  const AppAvatar(this.url, {this.size, this.borderWidth, this.borderColor, super.key});

  final String url;
  final double? size;
  final double? borderWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size??64 + ((borderWidth ?? 0) * 2),
          height: size??64 + ((borderWidth ?? 0) * 2),
          decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor ?? Colors.blueGrey),
        ),
        AppImage(url, size: size, borderRadius: 100),
      ],
    );
  }
}

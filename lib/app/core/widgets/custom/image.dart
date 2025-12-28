import 'dart:io';

import 'package:bestdroid/app/core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.url, {
    this.size,
    this.borderColor,
    this.borderRadius,
    this.width,
    this.height,
    this.color,
    super.key,
  });

  final String url;
  final double? size;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final String path = url.trim().toLowerCase();

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: (() {
        if (path.startsWith('http')) {
          if (path.endsWith('svg')) {
            return SvgPicture.network(
              path,
              width: size ?? width,
              height: size ?? height,
              colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
            );
          } else {
            return Image.network(
              path,
              width: size ?? width,
              height: size ?? height,
              color: color,
            );
          }
        } else {
          if (path.contains('assets')) {
            if (path.endsWith('svg')) {
              return SvgPicture.asset(
                path,
                width: size ?? width,
                height: size ?? height,
                colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
              );
            } else {
              return Image.asset(
                path,
                width: size ?? width,
                height: size ?? height,
                color: color,
              );
            }
          } else if (url.contains(Core.packageName)) {
            return Image.file(

              File(path),
              width: size ?? width,
              height: size ?? height,
              color: color,
            );
          }
          return const Placeholder();
        }
      })(),
    );
  }
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
          width: (size ?? 64) + ((borderWidth ?? 0) * 2),
          height: (size ?? 64) + ((borderWidth ?? 0) * 2),
          decoration: BoxDecoration(shape: BoxShape.circle, color: borderColor ?? Colors.red),
        ),
        AppImage(
          url,
          size: size,
          borderRadius: 100,
        ),
      ],
    );
  }
}

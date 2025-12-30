import 'dart:ui';

import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/modules/home/controllers/home_controller.dart';
import 'package:bestdroid/app/modules/home/widgets/item_switch_lt.dart';
import 'package:bestdroid/app/modules/home/widgets/item_switch_pa.dart';
import 'package:bestdroid/app/modules/home/widgets/item_switch_pt.dart';
import 'package:bestdroid/app/modules/test_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _appbar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          /// 1️⃣ Background
          Positioned.fill(child: Image.asset(AppImages.image8, fit: BoxFit.cover)),

          Positioned.fill(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6))),

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('دستگاهها').labelLarge(fontSize: 32), AppImage(AppIcons.edit)],
                  ).marginSymmetric(horizontal: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                        _category(title: 'همه', index: 0),
                        _category(title: 'روشنایی', index: 1),
                        _category(title: 'پرده ها', index: 2),
                        _category(title: 'صوتی و تصویری', index: 3),
                      ],
                    ),
                  ), //

                  _section(
                    'روشنایی',
                    controller.listsLt,
                    (model) => ItemSwitchLt(model: model),
                  ).marginBottom(16).marginSymmetric(horizontal: 16),
                  Hero(
                    tag: 'L1',
                    child: _section(
                      'پریز ها',
                      controller.listsPt,
                      (model) => ItemSwitchPt(model: model).onTap(
                        () {
                          Get.to(TestSwitch());
                        },
                      ),
                    ).marginBottom(16).marginSymmetric(horizontal: 16),
                  ),
                  _section(
                    'پرده ها',
                    controller.listsPa,
                    (model) => ItemSwitchPa(model: model),
                  ).marginBottom(16).marginSymmetric(horizontal: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar() => AppBar(
    actionsPadding: EdgeInsets.symmetric(horizontal: 8),
    backgroundColor: Colors.transparent,
    actions: [AppImage(AppIcons.add), SizedBox(width: 16), AppImage(AppIcons.options)],
  );

  Widget _category({required String title, required int index}) => Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(32)),
    child: Text(title).titleLarge(),
  );

  Widget _section<T>(
    String title,
    List<T> list,
    Widget Function(T) builder,
  ) {
    if (list.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(title).titleLarge(),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 6,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: list.length,
          itemBuilder: (_, i) => builder(list[i]),
        ),
      ],
    );
  }
}

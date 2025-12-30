import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/core/widgets/custom/button.dart';
import 'package:bestdroid/app/core/widgets/custom/image.dart';
import 'package:bestdroid/app/core/widgets/custom/text_field.dart';
import 'package:bestdroid/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          AppImage(AppIcons.support).marginSymmetric(horizontal: 32),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Text('شماره همراه خود را وارد کنید:').titleLarge(color: Colors.black),
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    spacing: 4,
                    children: [
                      AppImage(
                        AppPng.circleFlag,
                        width: 32,
                      ),
                      Text('+98').titleMedium(color: Colors.black.withValues(alpha: 0.5)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: AppTextField(
                    hint: '9*********',
                    textInputType: TextInputType.number, //
                    maxLength: 10,
                  ),
                ).expanded(),
              ],
            ).ltr().marginSymmetric(horizontal: 16),
            SizedBox(height: 48),
            AppButton(
              text: 'ورود',
              onPressed: () {},
            ),
            SizedBox().expanded(),
            Text('شماره نسخه:1.0.0').labelLarge(color: context.theme.primaryColorDark.withValues(alpha: 0.5)),
          ],
        ).marginBottom(MediaQuery.of(context).padding.bottom).marginSymmetric(horizontal: 64),
      ),
    );
  }
}

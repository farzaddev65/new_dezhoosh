import 'package:bestdroid/app/app_routes/app_routs.dart';
import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/core/theme/app_icons.dart';
import 'package:bestdroid/app/core/widgets/custom/button.dart';
import 'package:bestdroid/app/modules/empty/controllers/controller.dart';
import 'package:bestdroid/app/modules/otp/controllers/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../core/widgets/custom/image2.dart' show AppImage;

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xffeaddff)),
              child: AppImage(
                size: 128,
                AppIcons.avatar,
                borderRadius: 100,
              ),
            ),
            Text('کد پیامک شده به شماره:').titleLarge(color: Colors.black),
            Text('+989131234567').titleSmall(color: Colors.black),
            Text('را وارد کنید').titleLarge(color: Colors.black),
            PinFieldAutoFill(
              controller: controller.verifyController,
              autoFocus: true,
              codeLength: 4,
              decoration: BoxLooseDecoration(
                radius: const Radius.circular(16),
                strokeColorBuilder: FixedColorBuilder(Colors.white),
                bgColorBuilder: FixedColorBuilder(Colors.white),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onCodeSubmitted: (final String code) {
                if (code.length == 4) {
                  controller.submit();
                }
              },
              onCodeChanged: (final String? code) {
                if ((code ?? '').length == 4) {
                  controller.submit();
                }
              },
            ).marginBottom(8).marginSymmetric(horizontal: 24),
            Text('ارسال مجدد کد بعد از: 2:00').bodyLarge(color: context.theme.primaryColorDark.withValues(alpha: 0.6)).marginBottom(16),
            AppButton(text: 'تایید', onPressed: () {
              Get.toNamed(AppRouts.home);
            }).marginBottom(8),
            AppButton(text: 'ارسال دوباره کد', enabled: false, onPressed: () {}),
          ],
        ).marginSymmetric(horizontal: 48),
      ),
    );
  }
}

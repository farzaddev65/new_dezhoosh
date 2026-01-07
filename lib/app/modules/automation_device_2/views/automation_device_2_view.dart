import 'package:bestdroid/app/core/core.dart';
import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:bestdroid/app/modules/automation_device_2/controllers/automation_device_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutomationDevice2View extends GetView<AutomationDevice2Controller> {
  const AutomationDevice2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text('پذیرایی').labelLarge(),
          Container(
            decoration: Core.cardDecoration(context),
          )
        ],
      ),
    );
  }

  AppBar _appBar()=>AppBar(
    title: Text('دستگاه های اتوماسیون').titleLarge(),
  );
}

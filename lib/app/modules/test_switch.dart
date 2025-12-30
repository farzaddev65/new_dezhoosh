import 'package:bestdroid/app/modules/home/widgets/vertical_icon_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {

  Rx<bool> isTrue=false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
           () {
            return Hero(
              tag: 'L1',
              child: VerticalIconSwitch(
                value: isTrue.value,
                onChanged: (bool value) {
                  isTrue(!isTrue.value);
                },
              ),
            );
          }
        ),
      ),
    );
  }
}

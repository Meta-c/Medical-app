import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:knowledge_system/features/input%20page/input_page_controller.dart';
import 'package:knowledge_system/features/input%20page/page_view_item.dart';
import 'package:knowledge_system/features/input%20page/submit_view_item.dart';

class CustomPageView extends GetView<InputPageController> {
  CustomPageView({super.key, this.pageController});

  final PageController? pageController;
  String? choose = Get.find<InputPageController>().data.firstSymptom;

  dynamic firstValue;
  dynamic secondValue;
  dynamic thirdValue;
  dynamic fourthValue;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputPageController>(
        init: Get.find<InputPageController>(),
        builder: (controller) => PageView(
              controller: pageController,
              onPageChanged: (value) => controller.setIndex(value),
              children: [
                PageViewItem(
                  symptomNum: 'First',
                  onchange: (value) {
                    controller.onPageChanged(value, 0);
                    firstValue = value;
                    controller.updateUI();
                  },
                  dropdownValue: firstValue,
                ),
                PageViewItem(
                  symptomNum: 'Second',
                  onchange: (value) {
                    controller.onPageChanged(value, 1);
                    secondValue = value;
                    controller.updateUI();
                  },
                  dropdownValue: secondValue,
                ),
                PageViewItem(
                  symptomNum: 'Third',
                  onchange: (value) {
                    controller.onPageChanged(value, 2);
                    thirdValue = value;
                    controller.updateUI();
                  },
                  dropdownValue: thirdValue,
                ),
                PageViewItem(
                  symptomNum: 'Fourth',
                  onchange: (value) {
                    controller.onPageChanged(value, 3);
                    fourthValue = value;
                    controller.updateUI();
                  },
                  dropdownValue: fourthValue,
                ),
                const SubmitViewItem()
              ],
            ));
  }
}

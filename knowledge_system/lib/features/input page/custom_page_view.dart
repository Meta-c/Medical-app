import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:knowledge_system/features/input%20page/input_page_controller.dart';
import 'package:knowledge_system/features/input%20page/page_view_item.dart';
import 'package:knowledge_system/features/input%20page/submit_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, this.pageController});

  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<InputPageController>(
        init: Get.find<InputPageController>(),
        builder: (controller) => PageView(
              controller: pageController,
              onPageChanged: (value) => controller.setIndex(value),
              children: const [
                PageViewItem(
                  symptomNum: 'First',
                ),
                PageViewItem(
                  symptomNum: 'Second',
                ),
                PageViewItem(
                  symptomNum: 'Third',
                ),
                PageViewItem(
                  symptomNum: 'Fourth',
                ),
                SubmitViewItem()
              ],
            ));
  }
}

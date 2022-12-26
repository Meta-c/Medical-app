import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/widgets/custom_button.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/add_page/add_page_view.dart';
import 'package:knowledge_system/features/loading_screen/loading_screen.dart';

import '../../core/utils/size_config.dart';
import '../input page/input_view.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      VerticalSpace(value: SizeConfig.defaultSize! * 1.8),
      Image.asset('assets/images/medical-icon-png-6576.png'),
      VerticalSpace(value: SizeConfig.defaultSize! * 0.8),
      CustomGeneralButton(
        text: 'Detection',
        elevation: SizeConfig.defaultSize! * 2,
        onTap: () => Get.to(LoadingScreen(nextPage: const InputView())),
      ),
      VerticalSpace(value: SizeConfig.defaultSize! * 1),
      CustomGeneralButton(
        text: 'Add',
        elevation: SizeConfig.defaultSize! * 2,
        onTap: () => Get.to(LoadingScreen(nextPage: const AddPageView())),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/custom_button.dart';
import 'package:knowledge_system/features/input%20page/custom_page_view.dart';
import 'package:knowledge_system/features/input%20page/input_page_controller.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:knowledge_system/features/loading_screen/loading_screen.dart';
import 'package:knowledge_system/features/results_page/result_page_view.dart';

class InputPageBody extends StatefulWidget {
  const InputPageBody({super.key});

  @override
  State<InputPageBody> createState() => _InputPageBodyState();
}

class _InputPageBodyState extends State<InputPageBody> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            left: 0,
            right: 0,
            top: SizeConfig.defaultSize! * 7,
            child: Image.asset(
              'assets/images/medical-icon-png-6576.png',
              width: SizeConfig.defaultSize! * 2,
              height: SizeConfig.defaultSize! * 15,
            )),
        Positioned(
            bottom: pageController!.hasClients && pageController?.page == 4
                ? SizeConfig.defaultSize! * 20
                : SizeConfig.defaultSize! * 5,
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              text: pageController!.hasClients && pageController?.page == 4
                  ? 'Submit'
                  : 'Next',
              onTap: () async {
                String? firstsymb =
                    Get.find<InputPageController>().data.firstSymptom;
                String? secondsymb =
                    Get.find<InputPageController>().data.secondSymptom;
                String? thirdsymb =
                    Get.find<InputPageController>().data.thirdSymptom;
                String? fourthsymb =
                    Get.find<InputPageController>().data.fourthSymptom;
                pageController!.hasClients && pageController?.page == 4
                    ? {
                        patientSymp.add(firstsymb!),
                        patientSymp.add(secondsymb!),
                        patientSymp.add(thirdsymb!),
                        patientSymp.add(fourthsymb!),
                        Get.to(LoadingScreen(
                          nextPage: const ResultPageView(),
                        ))
                      }
                    : pageController?.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
              },
            ))
      ],
    );
  }
}



// Future.delayed(const Duration(seconds: 1), () {
//                           // ignore: prefer_const_constructors
//                           Get.to(() => ResultPageView(),
//                               transition: Transition.fade);
//                         })
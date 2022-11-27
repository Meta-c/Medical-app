import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:knowledge_system/core/widgets/custom_button.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/input%20page/input_view.dart';

class ResultPageBody extends GetView {
  const ResultPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: SizeConfig.defaultSize! * 15,
            child: Container(
              width: SizeConfig.defaultSize! * 3,
              height: SizeConfig.defaultSize! * 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey),
              child: Column(
                children: [
                  const VerticalSpace(
                    value: 1.5,
                  ),
                  Text(
                    'Result :',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 3.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const VerticalSpace(
                    value: 4,
                  ),
                  Text(
                    result(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 4,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 22, 11, 11),
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              // color: Colors.white,
            ),
          ),
          Positioned(
              left: 0,
              bottom: SizeConfig.defaultSize! * 20,
              right: 0,
              child: Image.asset(
                'assets/images/survey.png',
                width: SizeConfig.defaultSize! * 1,
                height: SizeConfig.defaultSize! * 30,
              )),
          Positioned(
              bottom: SizeConfig.defaultSize! * 5,
              left: 0,
              right: 0,
              child: CustomGeneralButton(
                text: 'Home',
                onTap: () {
                  Future.delayed(const Duration(seconds: 3), () {
                    // ignore: prefer_const_constructors
                    Get.to(() => InputView(), transition: Transition.fade);
                  });
                },
              ))
        ]);
  }
}
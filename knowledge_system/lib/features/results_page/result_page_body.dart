import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:knowledge_system/core/widgets/custom_button.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/loading_screen/loading_screen.dart';
import 'package:knowledge_system/features/main_page/main_page_view.dart';
import 'package:knowledge_system/services/database.dart';

class ResultPageBody extends GetView {
  ResultPageBody({super.key});

  final storedData = Get.find<JsonDecode>().mappedData;

  @override
  Widget build(BuildContext context) {
    return Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Positioned(
            left: SizeConfig.defaultSize! * 2,
            right: SizeConfig.defaultSize! * 2,
            top: SizeConfig.defaultSize! * 15,
            child: Material(
              elevation: 15,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Container(
                width: SizeConfig.defaultSize! * 3,
                height: SizeConfig.defaultSize! * 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlueAccent),
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
                      result(storedData),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 4,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 19, 18, 18),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                // color: Colors.white,
              ),
            ),
          ),
          Positioned(
              bottom: SizeConfig.defaultSize! * 5,
              left: SizeConfig.defaultSize! * 4,
              right: SizeConfig.defaultSize! * 4,
              child: CustomGeneralButton(
                elevation: 7,
                text: 'Home',
                onTap: () {
                  res = 'Unidentified';
                  emptySympList();
                  Get.to(LoadingScreen(nextPage: const MainPageView()));
                },
              ))
        ]);
  }
}

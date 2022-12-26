import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/custom_button.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/loading_screen/loading_screen.dart';
import 'package:knowledge_system/features/main_page/main_page_view.dart';
import 'package:knowledge_system/services/database.dart';
import 'package:path_provider/path_provider.dart';

class AddPageBody extends StatefulWidget {
  const AddPageBody({super.key});

  @override
  State<AddPageBody> createState() => _AddPageBodyState();
}

class _AddPageBodyState extends State<AddPageBody> {
  final keyController = TextEditingController();

  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  final fourthController = TextEditingController();

  late File jsonFile;
  late Directory dir;
  String fileName = "diseases.json";

  String diseaseName = '';

  List<String> symptoms = [];

  Map<String, List<String>>? disease = {};

  @override
  void initState() {
    // TODO: implement initState
    getApplicationDocumentsDirectory().then((Directory directory) {
      dir = directory;
      jsonFile = File("${dir.path}/$fileName");
    });
    Get.find<JsonDecode>().decoded();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    keyController.dispose();
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    fourthController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: SizeConfig.defaultSize! * 1.5),
        TextField(
            controller: keyController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! * 2))),
                hintText: 'Enter Disease name')),
        VerticalSpace(value: SizeConfig.defaultSize! * 0.4),
        TextField(
            controller: firstController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! * 2))),
                hintText: 'Enter First Symptom')),
        VerticalSpace(value: SizeConfig.defaultSize! * 0.4),
        TextField(
            controller: secondController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! * 2))),
                hintText: 'Enter Second Symptom')),
        VerticalSpace(value: SizeConfig.defaultSize! * 0.4),
        TextField(
            controller: thirdController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! * 2))),
                hintText: 'Enter Third Symptom')),
        VerticalSpace(value: SizeConfig.defaultSize! * 0.4),
        TextField(
            controller: fourthController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize! * 2))),
                hintText: 'Enter Forth Symptom')),
        VerticalSpace(value: SizeConfig.defaultSize! * 1),
        CustomGeneralButton(
          text: 'Submit',
          elevation: 1,
          onTap: () => setState(() {
            symptoms.addAll([
              firstController.text,
              secondController.text,
              thirdController.text,
              fourthController.text
            ]);

            diseaseName = keyController.text;
            print(diseaseName);
            disease = {diseaseName: symptoms};

            Get.find<JsonDecode>().writeToJson(disease!, jsonFile);
            symptoms = [];
            disease = {};
            diseaseName = '';

            Get.to(LoadingScreen(nextPage: const MainPageView()));
          }),
        )
      ],
    );
  }
}

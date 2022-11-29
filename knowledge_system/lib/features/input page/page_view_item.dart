import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/knowledge base/symptoms_list.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class PageViewItem extends GetView {
  PageViewItem({super.key, this.symptomNum, this.onchange, this.dropdownValue});

  String? symptomNum;
  void Function(dynamic)? onchange;
  dynamic dropdownValue;
  // DropdownMenuItem<String?> dropdownValue = symptoms.first.value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: SizeConfig.defaultSize! * 3,
        ),
        Text(
          '$symptomNum Symptom',
          style: TextStyle(
            fontSize: SizeConfig.defaultSize! * 3,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlueAccent,
            fontFamily: 'Poppins',
          ),
        ),
        VerticalSpace(
          value: SizeConfig.defaultSize! * 0.5,
        ),
        DropdownButton2(
          // dropdownColor: Colors.lightBlueAccent,
          // elevation: 2,
          // borderRadius: BorderRadius.circular(20),
          buttonHeight: SizeConfig.defaultSize! * 5,
          buttonWidth: SizeConfig.defaultSize! * 30,
          // buttonPadding: const EdgeInsets.only(left: 10, right: 0),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.lightBlueAccent,
          ),
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.lightBlueAccent,
          ),
          icon: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 11,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.grey,
          dropdownElevation: 2,

          items: symptoms,
          onChanged: onchange,
          value: dropdownValue,
          hint: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Choose Symptom',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

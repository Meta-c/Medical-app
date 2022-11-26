import 'package:flutter/material.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';
import 'package:knowledge_system/features/knowledge base/symptoms_list.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.symptomNum});

  final String? symptomNum;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: SizeConfig.defaultSize! * 4,
        ),
        Text(
          '$symptomNum Symptom',
          style: TextStyle(
            fontSize: SizeConfig.defaultSize! * 4,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
            fontFamily: 'Poppins',
          ),
        ),
        const VerticalSpace(
          value: 3,
        ),
        DropdownButton(items: symptoms, onChanged: (value) {})
      ],
    );
  }
}
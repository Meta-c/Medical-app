import 'package:flutter/material.dart';
import 'package:knowledge_system/core/utils/size_config.dart';

class ResultPageBody extends StatelessWidget {
  const ResultPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        'Test',
        style: TextStyle(
          fontSize: SizeConfig.defaultSize! * 4,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
      ),
    ));
  }
}

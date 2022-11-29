import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:knowledge_system/features/results_page/result_page_body.dart';

class ResultPageView extends StatelessWidget {
  const ResultPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappColor,
      body: const ResultPageBody(),
    );
  }
}

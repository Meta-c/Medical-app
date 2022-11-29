import 'package:flutter/material.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:knowledge_system/features/input%20page/input_body.dart';

class InputView extends StatelessWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappColor,
      body: const InputPageBody(),
    );
  }
}

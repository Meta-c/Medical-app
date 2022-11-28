import 'package:flutter/material.dart';
import 'package:knowledge_system/features/input%20page/input_body.dart';

class InputView extends StatelessWidget {
  const InputView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: InputPageBody(),
    );
  }
}

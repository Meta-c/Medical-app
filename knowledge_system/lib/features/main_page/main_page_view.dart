import 'package:flutter/material.dart';
import 'package:knowledge_system/core/constants.dart';

import 'main_page_body.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kappColor,
      body: MainPageBody(),
    );
  }
}

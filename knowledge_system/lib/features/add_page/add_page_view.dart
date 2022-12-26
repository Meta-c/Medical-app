import 'package:flutter/material.dart';
import 'package:knowledge_system/core/constants.dart';

import 'add_page_body.dart';

class AddPageView extends StatelessWidget {
  const AddPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kappColor,
      body: AddPageBody(),
    );
  }
}

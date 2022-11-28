// import 'package:ecommerce/core/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/dependecies.dart';
import 'features/splash/splash_view.dart';

void main() {
  setupDependecies();
  runApp(const diseasIdentify());
}

class diseasIdentify extends StatelessWidget {
  const diseasIdentify({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      theme: ThemeData(fontFamily: 'Poppins'),
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}

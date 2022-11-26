// import 'package:ecommerce/core/dependecies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'features/splash/splash_view.dart';

void main() {
  // setupDependecies();
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const diseasIdentify()));
}

class diseasIdentify extends StatelessWidget {
  const diseasIdentify({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      theme: ThemeData(fontFamily: 'Poppins'),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}

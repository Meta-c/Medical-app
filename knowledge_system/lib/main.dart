// import 'package:ecommerce/core/dependecies.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowledge_system/core/dependecies.dart';
import 'features/splash/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependecies();
  await Firebase.initializeApp();
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

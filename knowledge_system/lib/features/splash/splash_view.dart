import 'package:flutter/material.dart';
import 'package:knowledge_system/features/splash/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(30, 119, 117, 139),
      body: SplashBody(),
    );
  }
}

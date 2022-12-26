import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:knowledge_system/services/database.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key? key, required this.nextPage}) : super(key: key);
  Widget nextPage;

  @override
  _LoadingScreenState createState() => _LoadingScreenState(nextPage);
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  // late double longitude;
  // late double latitude;
  _LoadingScreenState(this.selectedPage);
  Widget? selectedPage;

  AnimationController? animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    // animationController?.repeat(reverse: true);

    goToResultPage(selectedPage!);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  // void getLocation() async {
  //   print('pressed');
  //   Location location = Location();

  //   //print(position);
  //   getLocationData();
  // }

  void goToResultPage(Widget page) {
    Future.delayed(const Duration(seconds: 2), () async {
      // ignore: prefer_const_constructors

      Get.to(() => page, transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        controller: animationController,
        duration: const Duration(seconds: 2),
        color: Colors.lightBlueAccent,
        size: 100,
      )),
    );
  }
}

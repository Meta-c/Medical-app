import 'package:flutter/material.dart';
import 'package:knowledge_system/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  CustomGeneralButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  late final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 2,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({super.key, this.value});

  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.value});

  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}

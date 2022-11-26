import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';

class SubmitViewItem extends StatelessWidget {
  const SubmitViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VerticalSpace(
        value: SizeConfig.defaultSize! * 4,
      ),
    );
  }
}

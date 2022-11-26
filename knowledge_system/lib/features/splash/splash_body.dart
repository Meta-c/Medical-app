import 'package:flutter/cupertino.dart';
import 'package:knowledge_system/core/utils/size_config.dart';
import 'package:knowledge_system/core/widgets/space_widget.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/medical-icon-png-6576.png'),
          const VerticalSpace(
            value: 2,
          ),
          Text(
            'Diseas Detection',
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 4,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              fontFamily: 'Poppins',
            ),
          )
        ],
      ),
    );
  }
}

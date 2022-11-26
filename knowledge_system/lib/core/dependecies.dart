import 'package:get/get.dart';

import '../features/input page/input_page_controller.dart';

void setupDependecies() {
  Get.lazyPut(() => InputPageController());
}

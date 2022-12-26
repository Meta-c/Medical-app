import 'package:get/get.dart';
import 'package:knowledge_system/features/knowledge%20base/symptoms_list.dart';
import 'package:knowledge_system/services/database.dart';

import '../features/input page/input_page_controller.dart';

void setupDependecies() {
  Get.lazyPut(() => InputPageController());
  Get.lazyPut(() => JsonDecode());
  Get.lazyPut(() => DropDownMenuItemsModify());
}

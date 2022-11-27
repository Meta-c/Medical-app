import 'package:get/get.dart';
import 'package:knowledge_system/features/input%20page/input_page_controller.dart';

class PatientData extends GetxController {
  String? firstsymb = Get.find<InputPageController>().data.firstSymptom;
  String? secondsymb = Get.find<InputPageController>().data.secondSymptom;
  String? thirdsymb = Get.find<InputPageController>().data.thirdSymptom;
  String? fourthsymb = Get.find<InputPageController>().data.fourthSymptom;
}

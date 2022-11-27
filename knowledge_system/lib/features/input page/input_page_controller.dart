import 'package:get/get.dart';
import 'package:knowledge_system/features/knowledge%20base/symptom_store.dart';

class InputPageController extends GetxController {
  int _index = 0;
  int get index => _index;

  SymptomDataStore _data = SymptomDataStore();
  SymptomDataStore get data => _data;

  void setIndex(int value) {
    _index = value;
    update();
  }

  void onPageChanged(String symp, int index) {
    if (index == 0) {
      _data = _data.copyWith(firstSymptom: symp);
    } else if (index == 1) {
      _data = _data.copyWith(secondSymptom: symp);
    } else if (index == 2) {
      _data = _data.copyWith(thirdSymptom: symp);
    } else if (index == 3) {
      _data = _data.copyWith(fourthSymptom: symp);
    }

    print('data is ${_data.firstSymptom}');

    update();
  }
}

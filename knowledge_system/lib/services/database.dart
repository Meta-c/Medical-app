import 'dart:convert';
import 'package:get/get.dart';
import 'package:knowledge_system/core/constants.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class JsonDecode {
  Map<String, List<String>> mappedData = {};

  Future<Map<String, List<String>>> decoded() async {
    final String response = await rootBundle.loadString(kpath);

    final data = await json.decode(response) as Map<String, dynamic>;
    final entries = data.entries
        .map((e) => MapEntry(e.key,
            (e.value as List<dynamic>).map((e) => e.toString()).toList()))
        .toList();
    final decodedData = Map.fromEntries(entries);
    mappedData = decodedData;
    return mappedData;
  }

  Map<String, dynamic> getMappedData() {
    return mappedData;
  }

  void writeToJson(Map<String, List<String>> newDisease, File jsonFile) {
    mappedData.addAll(newDisease);
    print(Get.find<JsonDecode>().mappedData);
    jsonFile.writeAsStringSync(jsonEncode(mappedData));
    print(Get.find<JsonDecode>().mappedData);
  }
}
// .map(
//             (e) => (e.value as List<dynamic>).map((e) => e.toString()).toList())
//         .toList();
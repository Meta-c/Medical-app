import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:knowledge_system/features/input%20page/input_page_controller.dart';

List<String> kIschaemicHeart = [
  'Neck or jaw pain',
  'A fast heartbeat',
  'Nausea and vomiting',
  'Sweating',
];

List<String> kStroke = [
  'Numbness',
  'trouble speaking',
  'Trouble seeing',
  'dizziness'
];

List<String> kCancer = [
  'Bleeding or bruising',
  'A sore that does not heal',
  'Thickening or lump in the breast or elsewhere',
  'Indigestion or difficulty in swallowing'
];

List<String> kCirrhosis = [
  'yellowing of the skin and whites of the eyes',
  'vomiting blood',
  'dark pee and tarry-looking poo',
  'bleeding or bruising easily'
];

List<String> kLowerRespiratoryInfections = [
  'cough',
  'sneezing',
  'a stuffy or runny nose',
  'a sore throat'
];

List<String> kChronicObstructivePulmonary = [
  'Frequent coughing or wheezing',
  'Trouble taking a deep breath',
  'Shortness of breath',
  'Excess phlegm or sputum'
];

List<String> kChronicKidney = [
  'weight loss and poor appetite',
  'tiredness',
  'blood in your pee',
  'difficulty sleeping',
];

List<String> kHepatitis = [
  'loss of appetite',
  'fever',
  'nausea',
  'light-colored stools'
];

List<String> kDiabetes = [
  'Urinate a lot',
  'very thirsty',
  'Lose weight without trying',
  'Have blurry vision'
];

final Map<String, List<String>> knowledgeBase = {
  'Ischaemic heart disease': kIschaemicHeart,
  'Stroke': kStroke,
  'Cancer': kCancer,
  'Cirrhosis': kCirrhosis,
  'Lower Respiratory Infections': kLowerRespiratoryInfections,
  'Chronic Obstructive Pulmonary': kChronicObstructivePulmonary,
  'Chronic Kidney': kChronicKidney,
  'Hepatitis': kHepatitis,
  'Diabetes': kDiabetes
};

List<String> patientSymp = [];

String res = 'No';

String result() {
  knowledgeBase.forEach((key, value) {
    if (const DeepCollectionEquality.unordered().equals(value, patientSymp)) {
      res = key;
    }
    InputPageController().updateUI();
  });

  return res;
}

void emptySympList() {
  patientSymp.clear();
}

var kappColor = Colors.white;

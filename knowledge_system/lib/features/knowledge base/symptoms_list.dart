import 'package:flutter/material.dart';

class DropDownMenuItemsModify {
  List<DropdownMenuItem> symptoms = [];
  DropDownMenuItemsModify();

  void dropDownMenuItemFun(Map<String, List<String>> data) {
    data.forEach((key, value) {
      for (var element in value) {
        symptoms.add(DropdownMenuItem(
          value: element,
          child: Text(element),
        ));
      }
      print(symptoms);
      print(value);
    });
  }

  List<DropdownMenuItem> getSympt() {
    return symptoms;
  }
}




// List<DropdownMenuItem> symptoms = [
//   const DropdownMenuItem(
//     value: 'Neck or jaw pain',
//     child: Text('Neck or jaw pain'),
//   ),
//   const DropdownMenuItem(
//     value: 'A fast heartbeat',
//     child: Text('A fast heartbeat'),
//   ),
//   const DropdownMenuItem(
//     value: 'Nausea and vomiting',
//     child: Text('Nausea and vomiting'),
//   ),
//   const DropdownMenuItem(
//     value: 'Sweating',
//     child: Text('Sweating'),
//   ),
//   const DropdownMenuItem(
//     value: 'Numbness',
//     child: Text('Numbness'),
//   ),
//   const DropdownMenuItem(
//     value: 'trouble speaking',
//     child: Text('trouble speaking'),
//   ),

//   /////////
//   const DropdownMenuItem(
//     value: 'Trouble seeing',
//     child: Text('Trouble seeing'),
//   ),
//   const DropdownMenuItem(
//     value: 'dizziness',
//     child: Text('dizziness'),
//   ),
//   const DropdownMenuItem(
//     value: 'Bleeding or bruising',
//     child: Text('Bleeding or bruising'),
//   ),
//   const DropdownMenuItem(
//     value: 'A sore that does not heal',
//     child: Text('A sore that does not heal'),
//   ),
//   const DropdownMenuItem(
//     value: 'Thickening or lump in the breast or elsewhere',
//     child: Text('Thickening or lump in the breast or elsewhere'),
//   ),
//   const DropdownMenuItem(
//     value: 'Indigestion or difficulty in swallowing',
//     child: Text('Indigestion or difficulty in swallowing'),
//   ),
//   const DropdownMenuItem(
//     value: 'yellowing of the skin and whites of the eyes',
//     child: Text('yellowing of the skin and whites of the eyes'),
//   ),
//   const DropdownMenuItem(
//     value: 'vomiting blood',
//     child: Text('vomiting blood'),
//   ),

//   const DropdownMenuItem(
//     value: 'dark pee and tarry-looking poo',
//     child: Text('dark pee and tarry-looking poo'),
//   ),

//   const DropdownMenuItem(
//     value: 'bleeding or bruising easily',
//     child: Text('bleeding or bruising easily'),
//   ),
//   const DropdownMenuItem(
//     value: 'a cough',
//     child: Text('a cough'),
//   ),
//   const DropdownMenuItem(
//     value: 'sneezing',
//     child: Text('sneezing'),
//   ),
//   const DropdownMenuItem(
//     value: 'a stuffy or runny nose',
//     child: Text('a stuffy or runny nose'),
//   ),
//   const DropdownMenuItem(
//     value: 'a sore throat',
//     child: Text('a sore throat'),
//   ),

//   const DropdownMenuItem(
//     value: 'Frequent coughing or wheezing',
//     child: Text('Frequent coughing or wheezing'),
//   ),
//   const DropdownMenuItem(
//     value: 'Trouble taking a deep breath',
//     child: Text('Trouble taking a deep breath'),
//   ),
//   const DropdownMenuItem(
//     value: 'Shortness of breath',
//     child: Text('Shortness of breath'),
//   ),
//   const DropdownMenuItem(
//     value: 'Excess phlegm or sputum',
//     child: Text('Excess phlegm or sputum'),
//   ),
//   const DropdownMenuItem(
//     value: 'weight loss and poor appetite',
//     child: Text('weight loss and poor appetite'),
//   ),
//   const DropdownMenuItem(
//     value: 'tiredness',
//     child: Text('tiredness'),
//   ),
//   const DropdownMenuItem(
//     value: 'blood in your pee',
//     child: Text('blood in your pee'),
//   ),
//   const DropdownMenuItem(
//     value: 'loss of appetite',
//     child: Text('loss of appetite'),
//   ),
//   const DropdownMenuItem(
//     value: 'fever',
//     child: Text('fever'),
//   ),
//   const DropdownMenuItem(
//     value: 'nausea',
//     child: Text('nausea'),
//   ),
//   const DropdownMenuItem(
//     value: 'light-colored stools',
//     child: Text('light-colored stools'),
//   ),
//   const DropdownMenuItem(
//     value: 'Urinate a lot',
//     child: Text('Urinate a lot'),
//   ),
//   const DropdownMenuItem(
//     value: 'very thirsty',
//     child: Text('very thirsty'),
//   ),
//   const DropdownMenuItem(
//     value: 'Lose weight without trying',
//     child: Text('Lose weight without trying'),
//   ),

//   const DropdownMenuItem(
//     value: 'Have blurry vision',
//     child: Text('Have blurry vision'),
//   ),

//   const DropdownMenuItem(
//     value: 'difficulty sleeping',
//     child: Text('difficulty sleeping'),
//   ),
// ];

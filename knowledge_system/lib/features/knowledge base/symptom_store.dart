class SymptomDataStore {
  SymptomDataStore(
      {this.firstSymptom = '',
      this.secondSymptom = '',
      this.thirdSymptom = '',
      this.fourthSymptom = ''});

  final String? firstSymptom;
  final String? secondSymptom;
  final String? thirdSymptom;
  final String? fourthSymptom;

  SymptomDataStore copyWith(
      {String? firstSymptom,
      String? secondSymptom,
      String? thirdSymptom,
      String? fourthSymptom}) {
    return SymptomDataStore(
        firstSymptom: firstSymptom ?? this.firstSymptom,
        secondSymptom: secondSymptom ?? this.secondSymptom,
        thirdSymptom: thirdSymptom ?? this.thirdSymptom,
        fourthSymptom: fourthSymptom ?? this.fourthSymptom);
  }
}

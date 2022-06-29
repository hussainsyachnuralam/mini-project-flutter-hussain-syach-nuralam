import 'package:flutter/material.dart';

class EligiblityScreenProvider extends ChangeNotifier {
  String _eligiblityMessage = "";
  bool _isEligible = false;

  void checkEligiblity(int age) {
    if (age >= 15)
      eligibleForLicense();
    else
      notEligibleForLicense();
  }

  void eligibleForLicense() {
    _eligiblityMessage = "You Are Eligible To Use This App";
    _isEligible = true;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  void notEligibleForLicense() {
    _eligiblityMessage = "You Are Not Eligible To Use This App";
    _isEligible = false;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  //Getter for Eligiblity message
  String get eligiblityMessage => _eligiblityMessage;

  //Getter for Eligiblity flag
  bool get isEligible => _isEligible;
}

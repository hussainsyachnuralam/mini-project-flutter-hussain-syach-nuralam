import 'package:flutter/material.dart';

class EventProvider extends ChangeNotifier {
  int numberOfEvent;
  EventProvider({
    this.numberOfEvent = 0,
  });
  void changeNumberOfEvent(int newValue) {
    numberOfEvent = newValue;
    notifyListeners();
  }
}

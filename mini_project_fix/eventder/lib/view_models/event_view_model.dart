import 'package:flutter/material.dart';
import 'package:eventder/models/event.dart';

class EventViewModel extends ChangeNotifier {
  bool _loading = false;
  List<Event> _eventViewModel = [];

  bool get loading => _loading;
  List<Event> get eventViewModel => _eventViewModel;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setEventViewModel(List<Event> eventViewModel) {
    _eventViewModel = eventViewModel;
  }
}

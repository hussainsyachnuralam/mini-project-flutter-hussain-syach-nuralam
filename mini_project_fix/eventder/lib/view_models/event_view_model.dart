import 'package:flutter/material.dart';
import 'package:eventder/models/event.dart';

class EventViewModel extends ChangeNotifier {
  bool _loading = false;
  List<Event> _eventListModel = [];

  bool get loading => _loading;
  List<Event> get eventListModel => _eventListModel;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setEventListModel(List<Event> eventListModel) {
    _eventListModel = eventListModel;
  }
}

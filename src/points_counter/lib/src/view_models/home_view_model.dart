import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {

  int _counter = 0;
  String _title = "Points Counter App";

  String get title => _title;
  String get buttonText => "Change Title";

  void changeTitle() {
    _title = "Changed $_counter";
    _counter++;
    notifyListeners();
  }
}
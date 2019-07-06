import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel(this._gamesService) {
    _gamesService.games.listen(onGameAdded);
  }

  IGamesService _gamesService;
  String _title = "Points Counter App";

  String get title => _title;

  void onGameAdded(Game game) {
    _title = game.name;
    notifyListeners();
  }
}
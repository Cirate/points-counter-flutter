import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel(this._gamesService) {
    games = List.from(_gamesService.getGames());
    _gamesService.listenToGameAdded(onGameAdded);
  }

  IGamesService _gamesService;
  String _title = "Points Counter App";
  List<Game> games;

  String get title => _title;

  void onGameAdded(Game game) {
    games.add(game);
    notifyListeners();
  }
}
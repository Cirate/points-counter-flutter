import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class NewGameViewModel with ChangeNotifier, NavigatorInjector {
  
  NewGameViewModel(this._gamesService);

  IGamesService _gamesService;
  int _counter = 0;

  String get buttonText => "Create Game";

  void createGame() {
    _counter++;
    var game = new Game(_counter, 'Awesome Game #$_counter');
    _gamesService.addGame(game);
  }
}
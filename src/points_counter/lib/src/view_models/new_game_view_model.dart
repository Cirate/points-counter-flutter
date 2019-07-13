import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/mock_data_generator.dart';

class NewGameViewModel with ChangeNotifier, NavigatorInjector {

  NewGameViewModel(this._gamesService);

  IGamesService _gamesService;

  String get titleText => "Create Game Page";
  String get buttonText => "Create Game and go back";

  void createGame() {
    _gamesService.addGame(MockDataGenerator.generateGame());
    navigator.pop();
  }
}
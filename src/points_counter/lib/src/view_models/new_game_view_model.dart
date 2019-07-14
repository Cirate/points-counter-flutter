import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/mock_data_generator.dart';
import 'package:points_counter/src/libraries/presentation_objects.dart';

class NewGameViewModel with ChangeNotifier, NavigatorInjector {
  NewGameViewModel(this._gamesService);

  IGamesService _gamesService;

  String get titleText => "Create Game";
  String get buttonText => "Create Game and go back";
  final TextFormFieldPO gameNameFormField = TextFormFieldPO(
    hint: 'What\'s the name of the game?',
    label: 'Game name',
    validator: (value) => value.isEmpty ? 'Please, type in a game name' : null);

  void createGame() {
    _gamesService.addGame(MockDataGenerator.generateGame());
    navigator.pop();
  }
}
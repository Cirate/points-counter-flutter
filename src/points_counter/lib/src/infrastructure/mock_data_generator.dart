import 'dart:math';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/infrastructure/service_locator.dart';

class MockDataGenerator{

  static void generateInitialGames(int numberOfGamesToGenerate) {
    var gamesService =ServiceLocator.resolve<IGamesService>();
    for (var i = 0; i < numberOfGamesToGenerate; i++) {
      gamesService.addGame(generateGame());
    }
  }

  static Game generateGame() {
    var gamesService =ServiceLocator.resolve<IGamesService>();
    var number = gamesService.getGames().length + 1;
    var game = Game(number, 'Game #$number');
    var random = Random();

    var numberOfPlayers = random.nextInt(4);
    var numberOfRounds = random.nextInt(5);

    for (var i = 0; i < numberOfPlayers; i++) {
      game.addPlayer(Player('Player #${i + 1}'));
    }

    for (var i = 0; i < numberOfRounds; i++) {
      game.addRound();
    }

    return game;
  }
}
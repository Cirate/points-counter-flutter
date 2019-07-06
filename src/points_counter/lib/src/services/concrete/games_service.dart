import 'package:rxdart/rxdart.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/services.dart';

class GamesService implements IGamesService {
  final PublishSubject<Game> games = PublishSubject<Game>();

  @override
  void addGame(Game game) {
    games.add(game);
  }

  @override
  void dispose() {
    games.close();
  }
}
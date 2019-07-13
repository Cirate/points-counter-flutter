import 'package:rxdart/rxdart.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/services.dart';

class GamesService implements IGamesService {
  final PublishSubject<Game> _gameAddedSubject = PublishSubject<Game>();
  final List<Game> _games = List<Game>();

  @override
  void addGame(Game game) {
    _games.add(game);
    _gameAddedSubject.add(game);
  }

  @override
  List<Game> getGames() {
    return List.unmodifiable(_games);
  }

  @override
  void listenToGameAdded(void onGameAdded(Game addedGame)) {
    _gameAddedSubject.listen(onGameAdded);
  }

  @override
  void dispose() {
    _gameAddedSubject.close();
  }
}
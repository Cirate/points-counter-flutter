import 'package:points_counter/src/models/game.dart';

abstract class IGamesService {
  void addGame(Game game);
  List<Game> getGames();
  void listenToGameAdded(void onGameAdded(Game addedGame));
  void dispose();
}
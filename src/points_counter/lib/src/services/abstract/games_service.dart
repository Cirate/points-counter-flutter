import 'package:rxdart/rxdart.dart';
import 'package:points_counter/src/models/game.dart';

abstract class IGamesService {
  PublishSubject<Game> get games;
  void addGame(Game game);
  void dispose();
}
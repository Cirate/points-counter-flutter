import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class HomeViewModel extends BaseVM {
  HomeViewModel(this._gamesService) {
    games = List.from(_gamesService.getGames());
    games.sort((a, b) => b.lastUpdateDate.compareTo(a.lastUpdateDate));
    _gamesService.listenToGameAdded(onGameAdded);
  }

  IGamesService _gamesService;
  String _title = "Points Counter";
  List<Game> games;

  String get title => _title;

  void onGameAdded(Game game) {
    games.add(game);
    games.sort((a, b) => b.lastUpdateDate.compareTo(a.lastUpdateDate));
    notifyListeners();
  }
}
import 'package:points_counter/src/libraries/models.dart';

class Game {
  Game(this.id, this.name);

  final int id;
  final String name;
  DateTime _lastUpdateDate = DateTime.now();
  List<Player> _players = List<Player>();
  List<Round> _rounds = List<Round>();

  DateTime get lastUpdateDate => _lastUpdateDate;
  List<Player> get players => List.unmodifiable(_players);
  List<Round> get rounds => List.unmodifiable(_rounds);

  void addPlayer(Player player) {
    _players.add(player);
    _updateLastUpdateDate();
  }

  void addRound() {
    var round = Round();
    _rounds.add(round);
    _updateLastUpdateDate();
  }

  void _updateLastUpdateDate() {
    _lastUpdateDate =DateTime.now();
  }
}
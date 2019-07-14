import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/models.dart';
import 'package:intl/intl.dart';

class GameListItem extends StatelessWidget {
  const GameListItem(this._game);

  final Game _game;

  @override
  Widget build(BuildContext context) {
    var formatter = new DateFormat('yMMMMEEEEd');
    String formatted = formatter.format(_game.lastUpdateDate);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                _game.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text('Number of players: ${_game.players.length}'),
                  Spacer(),
                  Text('Number of rounds: ${_game.rounds.length}'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text('Last played: $formatted'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

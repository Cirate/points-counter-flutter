import 'package:flutter/widgets.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class RequestNewGameViewModel with ChangeNotifier, NavigatorInjector {
  void navigateToNewGame() {
    navigator.pushNamed('/new-game');
  }

  final String buttonText = 'Create new game';
}
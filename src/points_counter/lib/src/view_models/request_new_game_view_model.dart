import 'package:flutter/widgets.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/libraries/pages.dart';

class RequestNewGameViewModel with ChangeNotifier, NavigatorInjector {
  void navigateToNewGame() {
    navigator.pushNamed(NewGamePage.route);
  }
}
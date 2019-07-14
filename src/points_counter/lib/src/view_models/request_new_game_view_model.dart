import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/libraries/pages.dart';

class RequestNewGameViewModel extends BaseVM {
  void navigateToNewGame() {
    navigator.pushNamed(NewGamePage.route);
  }
}
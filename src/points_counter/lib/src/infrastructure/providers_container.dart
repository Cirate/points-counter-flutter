import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/service_locator.dart';

class ProvidersContainer {
  static List<SingleChildCloneableWidget> get providers => [
      notifierFor<HomeViewModel>(),
      notifierFor<NewGameViewModel>(),
      notifierFor<RequestNewGameViewModel>()
    ];

  static ChangeNotifierProvider<T> notifierFor<T extends ChangeNotifier>() 
    => ChangeNotifierProvider<T>(builder: (_) => ServiceLocator.resolve<T>());
}
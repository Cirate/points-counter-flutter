import 'package:get_it/get_it.dart';
import 'package:points_counter/src/libraries/services.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class ServiceLocator {
  static GetIt _getIt = new GetIt();

  static void register() {
    _registerServices();
    _registerViewModels();
  }

  static void _registerServices() {
    _registerLazySingleton<IGamesService>(() => GamesService());
  }

  static void _registerViewModels() {
    _registerLazySingleton(() => HomeViewModel(resolve<IGamesService>()));
    _registerLazySingleton(() => NewGameViewModel(resolve<IGamesService>()));
    _registerLazySingleton(() => RequestNewGameViewModel());
  }

  static T resolve<T>() => _getIt.get<T>();
  static void _registerLazySingleton<T>(FactoryFunc<T> func) => _getIt.registerLazySingleton(func);
}
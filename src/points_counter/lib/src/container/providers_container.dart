import 'package:points_counter/src/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class ProvidersContainer {
  static List<SingleChildCloneableWidget> get providers {
    return [
      ChangeNotifierProvider(builder: (_) => HomeViewModel())
    ];
  }
}
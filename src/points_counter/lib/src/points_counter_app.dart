import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/infrastructure/providers_container.dart';
import 'package:points_counter/src/infrastructure/router.dart';

class PointsCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProvidersContainer.providers,
      child: MaterialApp(
        onGenerateRoute: Router.generateRoute,
        theme: ThemeData(brightness: Brightness.dark),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/infrastructure/providers_container.dart';
import 'package:points_counter/src/pages/home_page.dart';

class PointsCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProvidersContainer.providers,
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        home: HomePage(),
      ),
    );
  }
}
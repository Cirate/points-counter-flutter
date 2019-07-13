import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/pages.dart';

class Router {
  static Map<String, WidgetBuilder> _routes = {
    HomePage.route: (_) => HomePage(),
    NewGamePage.route: (_) => NewGamePage()
  };

  static Route<dynamic> generateRoute(RouteSettings route) =>
      MaterialPageRoute(builder: _routes[route.name]);
}

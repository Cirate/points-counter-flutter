import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/pages.dart';

class Router {
  static Map<String, WidgetBuilder> _routes = {
    '/': (_) => HomePage(),
    '/new-game': (_) => NewGamePage()
  };

  static Route<dynamic> generateRoute(RouteSettings route) =>
      MaterialPageRoute(builder: _routes[route.name]);
}

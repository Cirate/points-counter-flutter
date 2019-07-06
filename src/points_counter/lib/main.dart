import 'package:flutter/material.dart';
import 'package:points_counter/src/points_counter_app.dart';
import 'package:points_counter/src/infrastructure/service_locator.dart';

void main() {
  ServiceLocator.register();
  runApp(PointsCounterApp());
}

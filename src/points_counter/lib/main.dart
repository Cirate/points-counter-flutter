import 'package:flutter/material.dart';
import 'package:points_counter/src/points_counter_app.dart';
import 'package:points_counter/src/infrastructure/service_locator.dart';
import 'package:points_counter/src/infrastructure/mock_data_generator.dart';

void main() {
  ServiceLocator.register();
  MockDataGenerator.generateInitialGames(5);
  runApp(PointsCounterApp());
}

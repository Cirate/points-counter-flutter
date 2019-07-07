import 'package:flutter/widgets.dart';

mixin NavigatorInjector {
  NavigatorState _navigator;
  NavigatorState get navigator => _navigator ?? (throw ArgumentError.notNull('navigator'));

  void injectNavigator(NavigatorState navigator) {
    this._navigator = navigator ?? (throw ArgumentError.notNull('navigator'));
  }
}
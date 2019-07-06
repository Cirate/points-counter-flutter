import 'package:flutter/widgets.dart';

mixin NavigatorInjector {
  NavigatorState _navigator;
  NavigatorState get navigator => _navigator;

  void injectNavigator(NavigatorState navigator) {
    this._navigator = navigator;
  }
}
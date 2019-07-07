import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/consumer_with_navigator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Consumer<HomeViewModel>(builder: (context, vm, _) {
                  return Text(vm.title);
                }),
                ConsumerWithNavigator<RequestNewGameViewModel>(
                  builder: (context, vm, _) {
                    return RaisedButton(
                      onPressed: vm.navigateToNewGame,
                      child: Text(vm.buttonText),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

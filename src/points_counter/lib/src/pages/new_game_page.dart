import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/consumer_with_navigator.dart';

class NewGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                ConsumerWithNavigator<NewGameViewModel>(
                  builder: (context, vm, _) {
                    return Column(
                      children: <Widget>[
                        Text(vm.titleText),
                        RaisedButton(
                          onPressed: vm.createGame,
                          child: Text(vm.buttonText),
                        ),
                      ],
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
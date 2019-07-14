import 'package:flutter/material.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/libraries/widgets.dart';
import 'package:points_counter/src/infrastructure/consumer_with_navigator.dart';

class NewGamePage extends StatelessWidget {
  static const String route = '/new-game';

  @override
  Widget build(BuildContext context) {
    return ConsumerWithNavigator<NewGameViewModel>(builder: (context, vm, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text(vm.titleText),
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  TextFormFieldFromPO(vm.gameNameFormField),
                  RaisedButton(
                    onPressed: vm.createGame,
                    child: Text(vm.buttonText),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

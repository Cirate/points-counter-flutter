import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/libraries/view_models.dart';

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
                Consumer<NewGameViewModel>(
                  builder: (context, newGameVM, _) {
                    return RaisedButton(
                      onPressed: newGameVM.createGame,
                      child: Text(newGameVM.buttonText),
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:points_counter/src/infrastructure/consumer_with_navigator.dart';
import 'package:points_counter/src/libraries/widgets.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ConsumerWithNavigator<RequestNewGameViewModel>(
        builder: (context, vm, _) {
          return FloatingActionButton(
            onPressed: vm.navigateToNewGame,
            child: Icon(Icons.add),
          );
        },
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Center(
            child: Consumer<HomeViewModel>(builder: (context, vm, _) {
              return Container(
                child: ListView.builder(
                  itemCount: vm.games.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GameListItem(vm.games[index]);
                  },
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

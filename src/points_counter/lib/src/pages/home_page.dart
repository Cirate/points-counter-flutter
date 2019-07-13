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
      body: Consumer<HomeViewModel>(
        builder: (context, vm, _) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                title: Text(vm.title),
              ),
              SliverSafeArea(
                top: false,
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) {
                      return GameListItem(vm.games[index]);
                    },
                    childCount: vm.games.length,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

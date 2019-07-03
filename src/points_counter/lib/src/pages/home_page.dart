import 'package:flutter/material.dart';
import 'package:points_counter/src/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, vm, _) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(vm.title),
                  RaisedButton(
                    onPressed: vm.changeTitle,
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

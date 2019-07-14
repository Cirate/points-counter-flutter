import 'package:flutter/widgets.dart';
import 'package:points_counter/src/libraries/view_models.dart';
import 'package:provider/provider.dart';

class StatefulConsumer<T extends BaseVM> extends StatefulWidget {
  StatefulConsumer({
    Key key,
    @required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext context, T value) builder;

  @override
  _StatefulConsumerState<T> createState() =>
      _StatefulConsumerState<T>(builder: builder);
}

class _StatefulConsumerState<T extends BaseVM> extends State<StatefulConsumer> {
  _StatefulConsumerState({
    @required this.builder,
  });

  T _viewModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var navigator = Navigator.of(context);
    _viewModel = Provider.of<T>(context);
    _viewModel.injectNavigator(navigator);
    _viewModel.initState();
  }

  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, _viewModel);
  }
}

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class ConsumerWithNavigator<T extends NavigatorInjector> extends Consumer<T> {

  ConsumerWithNavigator({
    Key key,
    @required this.builder,
    child,
  }) : super(key: key, builder: builder, child: child);

  final Widget Function(BuildContext context, T value, Widget child) builder;

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);
    var viewModel = Provider.of<T>(context);
    viewModel.injectNavigator(navigator);

    return builder(
      context,
      viewModel,
      child
    );
  }
}
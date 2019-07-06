import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:points_counter/src/libraries/view_models.dart';

class ConsumerWithNavigator<T extends NavigatorInjector> extends Consumer<T> {

  ConsumerWithNavigator({
    Key key,
    @required builder,
    child,
  }) : super(key: key, builder: builder, child: child);

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
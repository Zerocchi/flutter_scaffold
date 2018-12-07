import 'package:flutter/widgets.dart';

import '../blocs/counter_bloc.dart';

class CounterProvider extends InheritedWidget {
  final CounterBloc counterBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CounterBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(CounterProvider) as CounterProvider)
          .counterBloc;

  CounterProvider({Key key, CounterBloc counterBloc, Widget child})
      : this.counterBloc = counterBloc ?? CounterBloc(),
        super(child: child, key: key);
}
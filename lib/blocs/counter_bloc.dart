import 'package:rxdart/rxdart.dart';

class CounterBloc {

  CounterBloc() {
    _counter = 0;
  }

  int _counter;

  // stream controller
  final _counterController = BehaviorSubject<int>();

  // stream 
  Observable<int> get counter => _counterController.stream;

  // stream sink
  Function(int) get _incrementCounter => _counterController.sink.add;

  increment() async {
    _incrementCounter(++_counter);
  }

  dispose() {
    _counterController.close();
  }
}
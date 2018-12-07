import 'package:flutter/material.dart';

import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final counterBloc = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter BLoC Scaffold"),
      ),
      body: StreamBuilder(
        initialData: 0,
        stream: counterBloc.counter,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You've tapped this much times:"),
                Text(snapshot.data.toString(), style: TextStyle(fontSize: 36.0),),
              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterBloc.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:flutter_scaffold/providers/counter_provider.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        title: 'Flutter BLoC Scaffold',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: true,
        home: HomePage(),
      ),
    );
  }
}


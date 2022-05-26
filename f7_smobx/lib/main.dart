import 'package:f7_smobx/screens/MainCounter.dart';
import 'package:f7_smobx/screens/SecondaryCounter.dart';
import 'package:f7_smobx/store/counter.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

final counter = Counter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Counter(),
      child: MaterialApp(
        title: 'Contador Mobx',
        initialRoute: '/',
        routes: {
          '/': (context) => MainCounter(),
          '/secondary': (context) => SecondaryCounter()
        },
      ),
    );
  }
}

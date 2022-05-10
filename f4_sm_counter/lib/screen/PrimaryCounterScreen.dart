import 'package:f4_sm_counter/models/CounterModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PrimaryCounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Primário'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Meu Contador Primário'),
            Text(
              'Contador: 0',
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/secondary-screen');
                },
                child: Text('Contador Secundário')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

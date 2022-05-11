import 'package:f4_sm_counter/model/CounterModel.dart';
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
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  'Contador: ${counter.getCount}',
                  style: TextStyle(fontSize: 25),
                );
              },
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
        onPressed: () {
          final contador = context.read<CounterModel>();
          contador.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:f4_sm_counter/model/CounterModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondaryCounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Secundário'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Meu Contador Secundário'),
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  'Contador: ${counter.getCount}',
                  style: TextStyle(fontSize: 25),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final contador = context.read<CounterModel>();
          contador.add();
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}

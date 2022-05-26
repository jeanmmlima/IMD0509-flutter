import 'package:f7_smobx/store/counter.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class MainCounter extends StatelessWidget {
  Widget getCounter(int c) {
    return Center(
        child: Text(
      'Você clicou ${c} vezes',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Main')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/secondary');
                },
                child: Text('Segunda tela')),
            Text('Olá Mundo!'),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: counter.increment,
              child: Container(
                  height: 300,
                  width: 300,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Observer(builder: (_) => getCounter(counter.count))),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

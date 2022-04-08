import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  _onClick() {
    setState(() {
      count++;
    });

    print(count);
    print('clicou!');
  }

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
    return Scaffold(
      appBar: AppBar(title: Text('Olá Mundo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Olá Mundo!'),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: _onClick,
              child: Container(
                  height: 300,
                  width: 300,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: getCounter(count)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

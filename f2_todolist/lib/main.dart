//developed by Jean Lima

import 'dart:math';

import 'package:f2_todolist/models/tarefa.dart';
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
  final _tarefaController = TextEditingController();

  _novaTarefa() {
    final titulo = _tarefaController.text;

    if (titulo.isEmpty) {
      return;
    }

    Tarefa novaTarefa = Tarefa(
        id: Random().nextInt(9999).toString(),
        titulo: titulo,
        data: DateTime.now());

    setState(() {
      _tarefas.add(novaTarefa);
    });

    print(titulo);
  }

  List<Tarefa> _tarefas = [
    Tarefa(id: 't0', titulo: 'Estudar', data: DateTime.now()),
    Tarefa(id: 't1', titulo: 'Jogar', data: DateTime.now()),
    Tarefa(id: 't2', titulo: 'Assistir', data: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _tarefaController,
              decoration: InputDecoration(labelText: 'Tarefa'),
            ),
            ElevatedButton(onPressed: _novaTarefa, child: Text('Confirmar')),
            Column(
              children: <Widget>[
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: _tarefas.length,
                    itemBuilder: (context, index) {
                      final tarefa = _tarefas[index];
                      return Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Text(tarefa.titulo),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

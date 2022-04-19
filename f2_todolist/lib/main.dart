//developed by Jean Lima

import 'dart:math';

import 'package:f2_todolist/models/tarefa.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

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
    Tarefa(
        id: 't2',
        titulo: 'Assistir',
        data: DateTime.now().subtract(Duration(days: 2)))
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: _novaTarefa, child: Text('Confirmar')),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: _tarefas.length,
                    itemBuilder: (context, index) {
                      final tarefa = _tarefas[index];
                      return Card(
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          tarefa.data.day == DateTime.now().day
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context)
                                                  .secondaryHeaderColor),
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                    DateFormat('d MMM y').format(tarefa.data),
                                    style: TextStyle(
                                        color: tarefa.data.day ==
                                                DateTime.now().day
                                            ? Theme.of(context).primaryColor
                                            : Theme.of(context)
                                                .secondaryHeaderColor))),
                            Text(tarefa.titulo),
                          ],
                        ),
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

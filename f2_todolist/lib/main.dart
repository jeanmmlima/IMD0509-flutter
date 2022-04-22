//developed by Jean Lima

import 'dart:math';

import 'package:f2_todolist/components/TarefaForm.dart';
import 'package:f2_todolist/components/TarefaLista.dart';
import 'package:f2_todolist/models/tarefa.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.purple,
                secondary: Colors.amber,
              )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _novaTarefa(String titulo, DateTime data) {
    Tarefa novaTarefa = Tarefa(
        id: Random().nextInt(9999).toString(), titulo: titulo, data: data);

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
            TarefaForm(_novaTarefa),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[TarefaLista(_tarefas)],
            )
          ],
        ),
      ),
    );
  }
}

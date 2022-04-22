import 'package:f2_todolist/models/tarefa.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TarefaLista extends StatelessWidget {
  List<Tarefa> _tarefaLista;

  TarefaLista(this._tarefaLista);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: _tarefaLista.length,
        itemBuilder: (context, index) {
          final tarefa = _tarefaLista[index];
          return Card(
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: tarefa.data.day >= DateTime.now().day
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(DateFormat('d MMM y').format(tarefa.data),
                        style: TextStyle(
                            color: tarefa.data.day >= DateTime.now().day
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary))),
                Text(tarefa.titulo),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:f2_todolist/models/tarefa.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarefaLista extends StatelessWidget {
  //atributo lista
  final List<Tarefa> _listaTarefas;

  //construtor
  TarefaLista(this._listaTarefas);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: _listaTarefas.length,
        itemBuilder: (context, index) {
          final tarefa = _listaTarefas[index];
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
                Text(
                  tarefa.titulo,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

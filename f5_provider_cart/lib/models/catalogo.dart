import 'package:flutter/material.dart';

/// Um proxy do catálogo de itens que o usuário pode comprar.
///
/// Em um aplicativo real, isso pode ser apoiado por um back-end e armazenado em cache no dispositivo.
/// Neste aplicativo de exemplo, o catálogo é gerado processualmente e infinito.
///
/// Por simplicidade, espera-se que o catálogo seja imutável (nenhum produto é
/// espera-se que seja adicionado, removido ou alterado durante a execução do aplicativo).
class CatalogModel {
  static List<String> itemNames = [
    'Code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];

  /// Obter item por [id].
  ///
  /// Neste exemplo, o catálogo é infinito, fazendo um loop sobre [itemNames].
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    // Neste caso simplificado, a posição de um item no catálogo
    // também é seu id.
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}

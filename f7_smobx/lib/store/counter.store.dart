import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int contador = 0;

  @action
  incrementar() {
    contador++;
  }

  int get getCount => contador;
}

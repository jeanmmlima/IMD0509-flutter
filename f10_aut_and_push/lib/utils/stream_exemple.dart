import 'dart:async';

void main() {
  /*
   * gerando valor do tipo inteiro
  final s  = Stream<int>.periodic(
    Duration(seconds: 2),
    (valor) => valor + 1,
  ).take(10);
  */

  //gerando valor do tipo inteiro
  final s = Stream<int>.multi((controller) {
    Timer.periodic(
      Duration(seconds: 1),
      (_) => controller.add(1),
    );
    // controller.add(1);
    // controller.add(2);
    // controller.add(3);
  });

  s.listen((valor) {
    print('o valor gerado é $valor');
  });
}

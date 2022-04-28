class Place {
  final String id;
  final List<String> paises;
  final String titulo;
  final String imagemUrl;
  final List<String> recomendacoes;
  final double avaliacao;
  final double custoMedio;

  const Place({
    required this.id,
    required this.paises,
    required this.titulo,
    required this.imagemUrl,
    required this.recomendacoes,
    required this.avaliacao,
    required this.custoMedio,
  });
}

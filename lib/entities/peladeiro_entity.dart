class PeladeiroEntity {
  final String nome;
  final String? posicao;

  PeladeiroEntity({required this.nome, this.posicao});

  String get posicaoOrDefault => posicao!.isEmpty || posicao == null ? 'Não informada' : posicao!;
}
class Categoria {
  String tipoVeiculo;
  String foto;

  Categoria({
    required this.tipoVeiculo,
    required this.foto,
  });

  factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        foto: json['foto'],
        tipoVeiculo: json['tipo_veiculo'],
      );

  Map<String, dynamic> toJson() => {
        'foto': foto,
        'tipo_veiculo': tipoVeiculo,
      };
}

/// Classe que representa um endereco
class Endereco {
  String rua;
  String bairro;
  String cidade;
  String estado;
  int cep;

  /// Construtor da classe endereco
  Endereco({
    required this.rua,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
  });

  /// Os métodos abaixo não são necessários caso não haja nenhuma conexão do
  /// sistema com algum tipo de webService, porém foram criados por precaução

  /// tranformando um objeto json em um objeto do tipo endereco
  factory Endereco.fromJson(Map<String, dynamic> json) => Endereco(
      bairro: json['bairro'],
      cep: json['cep'],
      cidade: json['cidade'],
      estado: json['estado'],
      rua: json['rua']);

  Map<String, dynamic> toJson() => {
        'bairro': bairro,
        'cep': cep,
        'cidade': cidade,
        'estado': estado,
        'rua': rua,
      };
}

class Car {
  String nome;
  String marca;
  String ano;
  String foto;
  double valor;

  Car({
    required this.valor,
    required this.nome,
    required this.marca,
    required this.ano,
    required this.foto,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        marca: json['marca'],
        foto: json['foto'],
        nome: json['nome'],
        ano: json['ano'],
        valor: json['valor'],
      );

  Map<String, dynamic> toJson() => {
    'marca': marca,
    'foto': foto,
    'nome': nome,
    'valor': valor,
    'ano': ano,
  };
}

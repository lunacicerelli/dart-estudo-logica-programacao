import 'dart:ffi';

class Marca {
  String? nome;

  Marca({required this.nome});
}

class Modelo {
  String? nome;
  Marca? marca;

  Modelo({required this.nome, required this.marca});
}

class Categoria {
  String? nome;

  Categoria({required this.nome}); 
}

class Produto {
  String? nome;
  Modelo? modelo;
  List<Categoria>? categorias;
  Double? valor;

  Produto({required this.nome, required this.modelo, required this.valor, required this.categorias});
}

class Estoque {
  List<Produto>? produtos;

  Estoque({required this.produtos});
}

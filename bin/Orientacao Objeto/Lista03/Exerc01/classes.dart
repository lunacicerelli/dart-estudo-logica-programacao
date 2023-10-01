import 'dart:ffi';

class Marca {
  String? nome;
}

class Modelo {
  String? nome;
  Marca? marca;
}

class Categoria {
  String? nome;
}

class Produto {
  String? nome;
  Modelo? modelo;
  List<Categoria>? categorias;
  Double? valor;
}

class Estoque {
  List<Produto>? produto;
}

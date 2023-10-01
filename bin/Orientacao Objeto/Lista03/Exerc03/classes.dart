

class Marca {
  String? nome;

  Marca({required this.nome});

  @override
  String toString() {
    return 'Marca[nome=$nome]';
  }
}

class Modelo {
  String? nome;
  Marca? marca;

  Modelo({required this.nome, required this.marca});

  @override
  String toString() {
    return 'Modelo[nome=$nome, marca=$marca]';
  }
}

class Categoria {
  String? nome;

  Categoria({required this.nome});

  @override
  String toString() {
    return 'Categoria[nome=$nome]';
  }
}

class Produto {
  String? nome;
  Modelo? modelo;
  List<Categoria>? categorias;
  double? valor;

  Produto({required this.nome, required this.modelo, required this.valor, required this.categorias});

  @override
  String toString() {
    return 'Produto[nome=$nome, modelo=$modelo, categorias=$categorias, valor=$valor]';
  }
}

class Estoque {
  List<Produto>? produtos;

  Estoque({required this.produtos});

  @override
  String toString() {
    return 'Estoque[produtos=$produtos]';
  }
}


void main() {
  atividade5();
}

void atividade4(){
  Marca marca1 = Marca(nome: "Nintendo");
  Modelo modelo1 = Modelo(nome: "Wii", marca: marca1);
  Categoria categoria1 = Categoria(nome: "Videogames");
  Categoria categoria2 = Categoria(nome: "Vídeo e TV");
  List<Categoria> categorias1 = [categoria1, categoria2];
  Produto produto1 = Produto(nome: "console-Wii", modelo: modelo1, categorias: categorias1, valor: 999.99);

  Marca marca2 = Marca(nome: "Consul");
  Modelo modelo2 = Modelo(nome: "Geladeira", marca: marca2);
  Categoria categoria3 = Categoria(nome: "Eletrodomésticos");
  Categoria categoria4 = Categoria(nome: "Casa e lar");
  List<Categoria> categorias2 = [categoria3, categoria4];
  Produto produto2 = Produto(nome: "gelatudo", modelo: modelo2, categorias: categorias2, valor: 4999.99);

  List<Produto> produtos = [produto1, produto2];
  Estoque estoque = Estoque(produtos: produtos);

  print(estoque);
}

void atividade5(){
  Estoque estoque = Estoque(
    produtos: [
      Produto(
        nome: "console-Wii", 
        modelo: Modelo(
          marca: Marca(
            nome: "Nintendo"), 
            nome: "Wii"), 
        categorias: [
          Categoria(
            nome: "Videogames"
          ),
          Categoria(
            nome: "Vídeo e TV"
          )
        ], 
        valor: 999.99
      ),
      Produto(
        nome: "gelatudo", 
        modelo: Modelo(
          marca: Marca(
            nome: "Consul"
          ), 
          nome: "Geladeira"
        ), 
        categorias: [
          Categoria(
            nome: "Eletrodomésticos"
          ),
          Categoria(
            nome: "Casa e lar"
          )
        ], 
        valor: 4999.99
      )
    ]
  );

  print(estoque);
}

class Marca {
  String nome;

  Marca({required this.nome});

  @override
  String toString() {
    return 'Marca(nome=$nome)';
  }
}

class Modelo {
  Marca marca;
  String nome;

  Modelo({required this.marca, required this.nome});

  @override
  String toString() {
    return 'Modelo(marca=$marca, nome=$nome)';
  }
}

class Categoria {
  String nome;

  Categoria({required this.nome});

  @override
  String toString() {
    return 'Categoria(nome=$nome)';
  }
}

class Produto {
  String nome;
  Modelo modelo;
  List<Categoria> categorias;
  double valor;

  Produto({required this.nome, required this.modelo, required this.categorias, required this.valor});

  @override
  String toString() {
    return 'Produto(nome=$nome, modelo=$modelo, categorias=$categorias, valor=$valor)';
  }
}

class Estoque {
  List<Produto> produtos;

  Estoque({required this.produtos});

  @override
  String toString() {
    return 'Produtos=$produtos';
  }
}
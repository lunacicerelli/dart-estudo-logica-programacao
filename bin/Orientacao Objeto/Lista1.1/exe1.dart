/*1. Crie as seguintes classes:

a. Marca
atributos:
- String nome;

b. Modelo
atributos:
- String nome

c. Veiculo
atributos:
- Marca marca
- Modelo modelo
- String anoFab
- String anoMod
- String cor

d. Estoque
atributos:
- List<Veiculo> veiculos
métodos:
- adicionarVeiculo
- removerVeiculo
- listarVeiculo
*/

class Marca {
  String? nome;
}

class Modelo {
  String? nome;
}

class Veiculo {
  Marca? marca;
  Modelo? modelo;
  String? anoFab;
  String? anoMod;
  String? cor;
}

class Estoque {
  List<Veiculo> veiculos = [];

  void adicionarVeiculo(Veiculo veiculo) {
    veiculos.add(veiculo);
  }

  void removerVeiculo(Veiculo veiculo) {
    veiculos.remove(veiculo);
  }

  void listarVeiculo(Veiculo veiculo) {
    print(veiculo); //verificar esse print
  }
}

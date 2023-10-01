/* 5. Modifique o main para criar todos os objetos de uma vez só.
Ex. Modelo(nome: "Wii", marca: Marca(nome: "Nintendo")) */

import '../Exerc03/classes.dart';

void main() {
  List<Produto> prds = [];

  Estoque estoque = Estoque(produtos: prds);

  Produto produto1 = Produto(
      nome: 'Fusca',
      modelo: Modelo(nome: 'Completo', marca: Marca(nome: 'Volkis')),
      valor: 3.5,
      categorias: [Categoria(nome: 'Plus')]);

  Produto produto2 = Produto(
      nome: 'Biclicleta',
      modelo: Modelo(nome: 'Completa', marca: Marca(nome: 'Caloi')),
      valor: 3.5,
      categorias: [Categoria(nome: 'Power')]);

  prds.add(produto1);
  prds.add(produto2);


//adicionando diretamente um terceiro produto
  prds.add(Produto(
      nome: 'Fusca',
      modelo: Modelo(nome: 'Completo', marca: Marca(nome: 'Volkis')),
      valor: 3.5,
      categorias: [Categoria(nome: 'Plus')]));

  print(estoque);
}

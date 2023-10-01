/* 4. No main crie um estoque com dois produtos, sendo marca, modelo e categoria
diferente entre eles, exiba as informações através do método toString. Crie
separadamente cada objeto.
Ex:

Marca marca1 = Marca(nome: "Nintendo"));
Modelo modelo1= Modelo(nome: "Wii", marca: marca1));
*/



import '../Exerc03/classes.dart';

void main() {
  List<Produto> prds = [];

  Estoque estoque = Estoque(produtos: prds);

  Marca marca1 = Marca(nome: 'Volkis');
  Modelo modelo1 = Modelo(nome: 'Completo', marca: marca1);
  Categoria categoria1 = Categoria(nome: 'Plus');
  List<Categoria> listaCategoria1 = [categoria1];

  Produto produto1 = Produto(
      nome: 'Fusca', modelo: modelo1, valor: 3.5, categorias: listaCategoria1);

  Marca marca2 = Marca(nome: 'Caloi');
  Modelo modelo2 = Modelo(nome: 'Completa', marca: marca2);
  Categoria categoria2 = Categoria(nome: 'Power');
  List<Categoria> listaCategoria2 = [categoria2];

  Produto produto2 = Produto(
      nome: 'Biclicleta',
      modelo: modelo2,
      valor: 3.5,
      categorias: listaCategoria2);

  prds.add(produto1);
  prds.add(produto2);

  print(estoque);
}

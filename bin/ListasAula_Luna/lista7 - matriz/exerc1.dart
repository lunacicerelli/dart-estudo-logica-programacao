/*Crie uma matriz 3x3 onde a primeira coluna terá o nome do protudo, a segunda coluna a marca e a terceira
o valor. Você está livre para definir este conteúdo. Com laços de repetição exiba todos os dados da matriz.
*/


void main() {
  List<List> exercicio = [
    ['Refrigerante', 'Ambev', 8],
    ['Bolacha', 'Nestle', 4],
    ['Chocolate', 'Arcor', 2]
  ];

  for (int i = 0; i < exercicio.length; i++) {
    for (int a = 0; a < exercicio[i].length; a++){ 
      print(exercicio[i][a]);
    }
  }
}

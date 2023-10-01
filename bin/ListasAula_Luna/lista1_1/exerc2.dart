/* 2. Crie duas variáveis uma do tipo int e outra do tipo String.
Atribua o número 1000 à primeira e o nome José à segunda.
Exiba com print o conteúdo das variáves.
Faça um print para cada variável.
*/

void main() {
  int numero = 1000;
  String nome = 'José';

  print('O número sorteado é:' + numero.toString()); // deveria usar interpolação - exercício3
  print('Meu nome é:' + nome);
}
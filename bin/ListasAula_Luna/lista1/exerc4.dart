/*4. Escreva um algoritmo que armazene o valor 5 em uma variável A e o valor 9 em
uma variável B. Utilizando apenas atribuição, troque o conteúdo das variáveis
fazendo com que A passe para B e vice-versa. Ao final, exibir os valores
armazenados nas variáveis.
*/


void main() {
  int A = 5;
  int B = 9;
  int C;

  C = A;
  A = B;
  B = C;

  print('A é igual: $A');
  print('B é igual: $C');

  /*outros exemplos

  int A = 5;
  int B = 9;
  int C;

  C = B;
  B = A;
  A = C;

  print('A é igual: $C');
  print('B é igual: $B');

  */



}


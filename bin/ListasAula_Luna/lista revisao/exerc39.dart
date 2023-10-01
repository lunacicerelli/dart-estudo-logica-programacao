/* 39. Crie uma lista com os valores: 15, 5, 10, 1, 9, 80, -10. Utilizando for, some todos os
valores da lista e exiba o resultado.
*/
void main() {
/*
  int soma = 0;
  soma = soma + numeros[0];
  soma = soma + numeros[1];
  soma = soma + numeros[2];
  soma = soma + numeros[3];
  soma = soma + numeros[4];
  soma = soma + numeros[5];
  soma = soma + numeros[6];
 */

  List<int> numeros = [15, 5, 10, 1, 9, 80, -10];

  int soma = 0;

  for (int posicao = 0; posicao <= 6; posicao++) {
    soma = soma + numeros[posicao];
  }

  print(soma);
}

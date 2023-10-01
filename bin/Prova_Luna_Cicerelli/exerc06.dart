/* 6. Utilizando laço de repetição do while, crie um algoritmo que apresente os seguintes
valores: 5, 2.5, 1.25, 0.63, 0.31, 0.16. */

/*
*/

void main() {
  double numero = 5;

  while (numero >= 0.08) {
    print('Os valores são: ${numero.toStringAsFixed(2)}');
    numero = numero / 2;
  }
}

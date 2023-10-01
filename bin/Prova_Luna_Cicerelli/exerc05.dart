/* 5. Utilizando laço de repetição while crie um algoritmo que apresente os seguintes
valores: 1, 10, 100, 1000, 10000, 100000, 1000000. */

void main() {
  int contador = 1;

  while (contador <= 1000000) {
    print('$contador');
    contador = contador * 10;
  }
}

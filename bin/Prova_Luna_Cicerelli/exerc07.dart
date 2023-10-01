/* 7. Utilizando laço de repetição for, crie um algoritmo que apresente os seguintes
números: 2, 4, 8 ,16, 32, 64, 128, 256, 512, 1024.*/

void main() {
  for (int contador = 1; contador <= 512; contador) {
    contador = contador * 2;

    print('$contador');
  }
}

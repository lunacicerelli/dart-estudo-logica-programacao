/*20. Solicite ao usuário quantas vezes a palavra ‘hello’ deverá ser exibida.
*/

import 'dart:io';

void main() {
  print('Digite a quantidade de repetição');
  int contador = int.parse(stdin.readLineSync()!);

  int quantidade = contador;

  while (contador >= quantidade) {
    print('hello');
  }
}

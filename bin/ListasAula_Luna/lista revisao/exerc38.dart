/* 38. Solicite 3 números ao usuário adicionando-os a uma lista, por fim exiba todos os
valores da lista.
*/

import 'dart:io';

void main() {
  List<int> numeros = [];

  for (int posicao = 0; posicao < 3; posicao++) {
    print('Digite um número');
    int numero = int.parse(stdin.readLineSync()!);

    numeros.add(numero);
  }

  print(numeros);
}

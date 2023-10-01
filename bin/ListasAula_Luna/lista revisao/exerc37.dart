/* 37. Crie uma lista vazia, adicione 5 nomes com um laço de repetição for, exiba todos os
nomes da lista.
*/

import 'dart:io';

void main() {
  List<String> nomes = [];

  for (int posicao = 0; posicao < 5; posicao++) {
    print('Digite um nome');
    String nome = stdin.readLineSync()!;

    nomes.add(nome);
    //nomes[posicao] = nome;  ----- patrick
  }

  print(nomes);
}

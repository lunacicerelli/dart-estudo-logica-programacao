/*25. Solicite um nome ao usuário e enquanto não for informado a palavra SAIR, continue
solicitando um novo nome.
*/

import 'dart:io';

void main() {
  String nome;

  do {
    print('Digite um nome ou SAIR');
    nome = stdin.readLineSync()!;
  } while (nome != 'SAIR');
}

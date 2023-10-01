/*17. Solicite uma letra ao usuário e exiba o nome da cidade de acordo com a letra:

Letra    Cidade
B        Blumenau
I        Indaial
G        Gaspar
F        Florianópolis
*/

import 'dart:io';

void main() {
  print('Digite uma das opções: B, I, G, F');
  String opcao = stdin.readLineSync()!;

  switch (opcao) {
    case 'B':
      print('Blumenau');
      break;
    case 'I':
      print('Indaial');
      break;
    case 'G':
      print('Gaspar');
      break;
    case 'F':
      print('Florianópolis');
      break;
    default:
      print('Letra inválida!');
  }
}

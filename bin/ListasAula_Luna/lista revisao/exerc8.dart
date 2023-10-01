/*8. Solicite um nome e exiba ele com todos os caracteres em maiúsculo. (utilize
toUpperCase)
*/

import 'dart:io';

void main() {
  print('Digite um nome: ');
  String nome = stdin.readLineSync()!;

  print({nome.toUpperCase()});
}

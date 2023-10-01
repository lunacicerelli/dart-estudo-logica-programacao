/*9. Solicite um nome e exiba ele com todos os caracteres em minúsculo. (utilize
toLowerCase)
*/

import 'dart:io';

void main() {
  print('Digite um nome em letra maiúscula: ');
  String nome = stdin.readLineSync()!;

  print({nome.toLowerCase()});
}

/*3. Solicite um nome ao usuário e exiba o nome informado.
(Utilize stdin.readLinesync)
*/

import 'dart:io';

void main() {
  print('Digite um nome');
  String nome = stdin.readLineSync()!;

  print('Olá $nome');
}

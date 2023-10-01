/*15. Solicite um nome minúsculo ao usuário e verifique se o nome é igual a MARIA em
maiúsculo. (Utilize toUpperCase)
*/

import 'dart:io';

void main() {
  print('Digite um nome em letra minúscula: ');
  String nome = stdin.readLineSync()!;

  if (nome.toUpperCase == 'MARIA') {
    print('Verdadeiro');
  } else {
    print('Falso');
  }
}

/*12. Solicite um número (int) ao usuário, se o número informado for maior que 15 exiba a
mensagem “Maior que 15”, senão, se for igual a 15 exiba “Igual a 15”, senão, exiba
“Menor que 15”. (Utilize o comando if, else if e else)
*/

import 'dart:io';

void main() {
  print('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 15) {
    print('Maior que 15');
  } else if (numero == 15) {
    print('Igual a 15');
  } else {
    print('Menor que 15');
  }
}

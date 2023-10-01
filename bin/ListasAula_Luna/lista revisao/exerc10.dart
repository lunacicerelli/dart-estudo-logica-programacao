/*10. Solicite um número (int) ao usuário, se o número informado for maior ou igual a 10
exiba a mensagem “Maior igual a 10”. (Utilize o comando if)
*/

import 'dart:io';

void main() {
  print('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 10) {
    print('Maior igual a 10');
  } else {
    print('Menor que 10');
  }
}

/*14. Solicite um número (int) ao usuário. Se o número informado for 5 ou 50 exiba a
mensagem “válido”, senão “inválido”. (utilize || no if)
*/

import 'dart:io';

void main() {
  print('Digite um numero: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero == 5 || numero == 50) {
    print('válido');
  } else {
    print('inválido');
  }
}

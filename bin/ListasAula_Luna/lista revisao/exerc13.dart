/*13. Solicite um número (int) ao usuário. Se o número informado for maior que 18 e
menor que 60 exiba a mensagem “Permitido”, senão exiba “Não permitido”. (utilize
&& no if)
*/

import 'dart:io';

void main() {
  print('Digite um numero:');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 18 && numero < 60) {
    print('Permitido');
  } else {
    print('Não permitido');
  }
}

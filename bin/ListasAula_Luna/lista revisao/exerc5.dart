/*5. Solicite dois números (int) ao usuário e exiba a soma deles.
*/

import 'dart:io';

void main() {
  print('Digite o primeiro número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Digite o segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int soma = num1 + num2;

  print('A soma é igual a: $soma');
}

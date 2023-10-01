/*4. Solicite um número (int) ao usuário, some 1 ao número e exiba o novo valor. (utilize
a função int.parse )
*/

import 'dart:io';

void main() {
  print('Digite um número:');
  int numero = int.parse(stdin.readLineSync()!);

  int soma = numero + 1;

  print('O número é: $soma');
}

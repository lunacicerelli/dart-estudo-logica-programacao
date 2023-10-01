/* Um programa na qual peça um número e mostre como 
resultado o número inteiro anterior a ele.
*/

import 'dart:io';

void main() {
  print('Digite um número');
  int numero = int.parse(stdin.readLineSync()!);

  int antecessor = --numero;

  print('O número antecessor é: $antecessor');
}

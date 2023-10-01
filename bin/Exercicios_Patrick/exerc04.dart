/* Um programa na qual peça um número e 
mostre como resultado o número inteiro anterior a ele, utilizando apenas 1 variável.
*/

import 'dart:io';

void main() {
  print('Digite um número');
  int numero = int.parse(stdin.readLineSync()!);
  numero = numero -1;

  print('O número antecessor é: $numero');
}
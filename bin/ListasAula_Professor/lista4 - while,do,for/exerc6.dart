/*6. (for) Escreva um algoritmo que solicite um número a usuário. Em seguida, exiba a
tabuada desse número.
*/


import 'dart:io';

void main() {
  print('Informe um número:');
  int numero = int.parse(stdin.readLineSync()!);
  for(int contador = 1 ; contador <= 10 ; contador++){
    print('$contador x $numero = ${contador*numero}');
  }
}
/* 34. Crie uma função que receba dois valores informados pelo usuario.
Essa funcao vai retornar a multiplicacao entre esses dois numeros.
Imprimir o resultado na tela
*/

import 'dart:io';

int multiplicar(int numero1, int numero2) {
  return numero1 * numero2;
}

void main() {
  print('Digite o primeiro número');
  int numero1 = int.parse(stdin.readLineSync()!);
  //o parse é uma função que recebe por parametro uma string e retorna um int. 

  print('Digite o segundo número:');
  int numero2 = int.parse(stdin.readLineSync()!);

  int resultado = multiplicar(numero1, numero2);

  print(resultado);
}

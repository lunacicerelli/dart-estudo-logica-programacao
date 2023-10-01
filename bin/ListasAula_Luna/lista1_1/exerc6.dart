/*6. Solicite um número ao usuário.
Salve esse número em uma variável do tipo int, será necessário fazer a conversão
de String para int com int.parse().
Muliplique o valor digitado por 10 e exiba com print o resultado.
*/

import 'dart:io';

void main() {
  print('Digite um número');

  //váriavel int = recebe a string q o usuário digitou através da função (stdin.readLineSync()!)
  //e converteu em int através da função 'int.parse'
  int numero = int.parse(stdin.readLineSync()!); 

  int resultado = numero * 10;

  print('O resultado é $resultado');
  


}
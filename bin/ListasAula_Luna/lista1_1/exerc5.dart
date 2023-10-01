/*5. Solicite um nome ao usuário. (utilize stdin.readLineSync()!)
Salve esse nome em uma variável String.
Exiba o nome digitado com um print.
*/

import 'dart:io';


void main() {
  print('Qual seu nome?');
  String nome = stdin.readLineSync()!;

  print('Olá $nome');

  //outros exemplos
  
  String nome2;
   print('Qual seu nome?');
   nome2 = stdin.readLineSync()!;

  print('Olá $nome2');



}
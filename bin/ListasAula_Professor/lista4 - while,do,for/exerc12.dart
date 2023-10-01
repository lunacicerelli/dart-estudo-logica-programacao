/*12. Crie um algoritmo que solicite 3 notas ao usuário, calcule e informe a média.
*/


import 'dart:io';

void main() {
  // print('Informe a nota 1:');
  // double nota1 = double.parse(stdin.readLineSync()!);
  // print('Informe a nota 2:');
  // double nota2 = double.parse(stdin.readLineSync()!);
  // print('Informe a nota 3:');
  // double nota3 = double.parse(stdin.readLineSync()!);
  // double media = (nota1+nota2+nota3)/3;
  // print('Média = ${media.toStringAsFixed(2)}')

  double notas = 0;
  for(int contador = 1 ; contador <= 3 ; contador++ ){
    print('Informe a nota $contador:');
    notas += double.parse(stdin.readLineSync()!);
  }

  double media = notas/3;
  print('Média = ${media.toStringAsFixed(2)}');
}
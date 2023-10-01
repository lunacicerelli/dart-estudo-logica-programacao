/* 2. Escreva um algoritmo que solicite 3 notas de um aluno e escreva a média. Informe
também a situação do aluno conforme a tabela abaixo:

Média                          Situação
maior ou igual a 7             Aprovado
entre 5 e 7                    Em Recuperação
menor que 5                    Reprovado

Considere que as notas têm peso 2, 3 e 5 respectivamente
*/

import 'dart:io';

void main() {
  print('Informe a nota 1:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Informe a nota 2:');
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1 / 2) + (nota2 / 3) + (nota3 / 5);

  print('Média: ${media.toStringAsFixed(2)}');

  if (media >= 7) {
    print('Aprovado');
  } else if (media > 5 || media < 7) {
    print('Em Recuperação');
  } else {
    print('Reprovado');
  }
}

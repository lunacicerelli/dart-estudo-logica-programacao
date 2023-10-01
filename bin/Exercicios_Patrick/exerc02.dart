/* Um programa que peça a nota do aluno e mostre se ele foi aprovado, reprovado ou em 
recuperação, seguindo regras abaixo:
nota maior ou igual a 7 = aprovado
nota menor que 5 = reprovado
nota maior ou igual a 5 e menor que 7 = em recuperação

*/

import 'dart:io';

void main() {
  print("Digite uma nota: ");
  int nota = int.parse(stdin.readLineSync()!);

  if (nota >= 7) {
    print('O aluno foi Aprovado');
  } else if (nota < 5) {
    print('O aluno foi Reprovado');
  } else {
    print('O aluno está em Recuperação');
  }
}

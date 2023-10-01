/* 3. Solicite o dia da semana ao usuário (1 à 7), utilizando o comando switch exiba o
nome do dia da semana. Ex. Se digitado 1 será exibido “Domingo” */

import 'dart:io';

void main() {
  print('Digite o dia da semana (1 à 7:)');
  String numero = stdin.readLineSync()!;

  switch (numero) {
    case '1':
      print('Domingo');
      break;
    case '2':
      print('Segunda-Feira');
      break;
    case '3':
      print('Terça-Feira');
      break;
    case '4':
      print('Quarta-Feira');
      break;
    case '5':
      print('Quinta-Feira');
      break;
    case '6':
      print('Sexta-Feira');
      break;
    case '7':
      print('Sábado');
      break;
    default:
      print('Número Inválido!');
  }
}

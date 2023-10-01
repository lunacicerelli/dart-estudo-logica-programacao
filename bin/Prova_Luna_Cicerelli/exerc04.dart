/* 4. Solicite o número do mês ao usuário (1-12) e informe o número de dias no mês
selecionado conforme a tabela abaixo:

Nro. de dias   |    Mês
28             |    2
30             |    4, 6, 9, 11
31             |    1, 3, 5, 7, 8, 10, 12

*/

import 'dart:io';

void main() {
  print('Digite o número do mês desejado (1 à 12:)');
  String numero = stdin.readLineSync()!;

  switch (numero) {
    case '2':
      print('38 Dias');
      break;
    case '4' || '6' || '9' || '11':
      print('30 Dias');
      break;
    case '1' || '3' || '5' || '7' || '8' || '10' || '12':
      print('31 Dias');
      break;
    default:
      print('Número Inválido!');
  }
}

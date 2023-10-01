/* Pedir a idade da pessoa e o tempo que ela trabalhou, e informar se ela pode se aposentar.
Para ela poder se aposentar, ela tem que atingir pelo menos um dos critérios a seguir:
Ser maior que 65 anos
Ter mais de 30 anos de trabalho
Ser maior que 60 anos E ter mais de 25 anos de trabalho
*/

import 'dart:io';

void main() {
  print('Digite sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);

  print('Tempo de trabalho');
  int tempoDetrabalho = int.parse(stdin.readLineSync()!);

  if ((idade > 65 || tempoDetrabalho > 30) ||
      (idade > 60 && tempoDetrabalho > 25)) {
    print('APOSENTADA');
  } else {
    print('SE FERROU');
  }
}

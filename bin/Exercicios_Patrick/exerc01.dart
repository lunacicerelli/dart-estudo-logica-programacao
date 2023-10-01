/* Um programa que pede o nome e idade de 3 pessoas, e no final mostre o nome a idade da 
mais velha. (pode assumir que não terá idades iguais digitadas).
*/

import 'dart:io';

void main() {
  String nomeVelha = "";
  int idadeVelha = 0;

  for (int contador = 1; contador <= 3; contador++) {
    print('Digite o nome da $contadorª pessoa:');
    String nome = stdin.readLineSync()!;

    print('Digite a idade da $contadorª pessoa:');
    int idade = int.parse(stdin.readLineSync()!);

    if (idade > idadeVelha) {
      idadeVelha = idade;
      nomeVelha = nome;
    }
  }
  print('A pessoa mais velha é: $nomeVelha $idadeVelha');
}

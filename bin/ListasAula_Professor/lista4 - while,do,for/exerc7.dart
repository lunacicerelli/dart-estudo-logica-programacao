/*7. (for) Escreva um algoritmo que solicite dois números ao usuário, um número inicial e
um final, depois exiba todos os números entre eles. Considere que o primeiro valor
será menor que o segundo valor.
*/


import 'dart:io';

void main() {
  print('Informe um número inicial:');
  int numeroInicial = int.parse(stdin.readLineSync()!);

  print('Informe um número final:');
  int numeroFinal = int.parse(stdin.readLineSync()!);
  print('');

  for( numeroInicial++ ; numeroInicial < numeroFinal ; numeroInicial++){
    print(numeroInicial);
  }

  // for(int valor = numeroInicial + 1 ; valor < numeroFinal ; valor++){
  //   print(valor);
  // }
}
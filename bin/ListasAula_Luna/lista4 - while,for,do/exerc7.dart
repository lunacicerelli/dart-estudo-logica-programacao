/*7. (for) Escreva um algoritmo que solicite dois números ao usuário, um número inicial e
um final, depois exiba todos os números entre eles. Considere que o primeiro valor
será menor que o segundo valor.
*/

import 'dart:io';

void main() {
  int numeroInicial;
  int numeroFinal;

  print('Numero incial:');
  numeroInicial = int.parse(stdin.readLineSync()!);
   print('Numero final:');
   numeroFinal = int.parse(stdin.readLineSync()!);

 for ( numeroInicial ; numeroInicial < numeroFinal; numeroInicial++){
  print(numeroInicial);
 }
//perguntar para o patrick sobre essa questão

 }


     




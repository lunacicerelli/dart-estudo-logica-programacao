/* 29. Solicite 5 números ao usuário e exiba a soma deles. Utilize uma variável para
somar/acumular os valores
*/

import 'dart:io';

void main() {
  int soma = 0;

  for (int contador = 1; contador <= 5; contador++) {
    print('Digite o $contadorº numero');
    int numero = int.parse(stdin.readLineSync()!);
    soma = soma + numero;
    // soma += numero
  }

  print(soma);
}

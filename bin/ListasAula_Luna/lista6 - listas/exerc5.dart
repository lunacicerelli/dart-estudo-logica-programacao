/*5. Crie um algoritmo que solicite 5 números ao usuário, informe quantos números 10
foram informados.*/

import 'dart:io';

void main() {
  List<int> listanumeros = [];

  for (int contador = 0; contador <= 5; contador++) {
    print('Digite um número: $contador');
    int numero = int.parse(stdin.readLineSync()!);

    if (numero == 10) {
      listanumeros.add(numero);
    }
  }

  for (int i = 0; i < listanumeros.length; i++) {
    print(listanumeros[i]);
  }

  print('O número 10 foi exibido $listanumeros vezes');
}

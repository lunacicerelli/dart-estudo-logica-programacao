/* 2. Crie uma matriz 4x4 e peça para o usuário informar os 16 números, utilize lados de repetição. 
Ao final efetue a soma de todos os valores.


import 'dart:io';

void main() {
  List<int> matrizQuatro = [];

  for (int i = 0; i <= 16; i++) {
    print('Digite um número: $i');
    int numero = int.parse(stdin.readLineSync()!);
    matrizQuatro.add(numero);

    for (int a = 0; a < matrizQuatro[i].length; a++);
    {
      print(matrizQuatro[a]);
    }
  }
}

*/

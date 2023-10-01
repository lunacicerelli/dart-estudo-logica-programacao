/*2 FAça um algoritmo onde o usuário deve informar 5 números. 
Em seguida, exiba todos os números infomados e a soma desses números
*/

import 'dart:io';

void main() {
  List<int> listanumeroS = [];

  for (int contador = 0; contador <= 5; contador++) {
    print('Digite um número: $contador');
    int numero = int.parse(stdin.readLineSync()!);
    
    listanumeroS.add(numero);
  }

  print(' ');

int soma = 0;
 for (int contador = 0; contador < listanumeroS.length; contador++){
  print(listanumeroS[contador]);
  soma  += listanumeroS[contador];}

  print('A soma de todos os números é: $soma');

}
/*4. (do-while) Escreva um algoritmo onde o usuário deve informar as opções do menu
de 1 à 5. Enquanto não for digitado um valor válido, permaneça solicitando a opção.
*/

import 'dart:io';

void main() {
  print('Digite um número de 1 à 5:');
  int numero = int.parse(stdin.readLineSync()!);
  while (numero < 1 || numero > 5)
  {
    print('Digite um número de 1 à 5:');
  }
  

  /*
        print('Digite um número de 1 à 5:');
    int numero = int.parse(stdin.readLineSync()!);
  while (numero > 5){
    print('Digite um número de 1 à 5:');}
    else{
      print('Numero válido');
    }


  print('Digite um número de 1 à 5:');
  int numero = int.parse(stdin.readLineSync()!);
  while (numero >= 6) {
    print('Digite um número de 1 à 5:');
  }
 */
}

/*16. Solicite um número (int) ao usuário, caso o valor seja 1 exiba “É um”, caso seja 2
exiba “É dois” e caso seja 3 exiba “É três”. Utilize o default para caso não seja 1, 2
ou 3 e exiba “Inválido”;
*/

import 'dart:io';

void main() {
  print('Digite um numero:');
  String numero = stdin.readLineSync()!;

  switch (numero) {
    case '1':
      print('É um');
      break;
    case '2':
      print('É dois');
      break;
    case '3':
      print('É trÊs');
      break;
    default:
      print('Número do candidato inválido!');
  }
}
